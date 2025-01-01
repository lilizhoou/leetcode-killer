
#logic
1. root: p_id is null 
2. leaf: p_id is not null, id is not in p_id
3. inner: p_id is not null, id is in p_id

#schema
data = [[1, None], [2, 1], [3, 1], [4, 2], [5, 2]]
tree = pd.DataFrame(data, columns=['id', 'p_id']).astype({'id':'Int64', 'p_id':'Int64'})

#solution
def tree_node(tree: pd.DataFrame) -> pd.DataFrame:
    df = tree
    df.loc[(df['p_id'].isna()),'type'] = 'Root'
    df.loc[(df['id'].isin(df['p_id'].values)) & (df['type'] != 'Root'),'type'] = 'Inner'
    df.loc[~(df['id'].isin(df['p_id'].values)) & (~df['p_id'].isna()),'type'] = 'Leaf'

    return df[['id','type']]
