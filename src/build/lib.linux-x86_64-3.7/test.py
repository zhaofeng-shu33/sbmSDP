import numpy as np
import networkx as nx
from sdp_admm_py import sdp1_admm_py
sizes = [20, 20, 20]
_p = 0.9
_q = 0.4
k = 3
p = np.diag(np.ones(k) * (_p - _q)) + _q * np.ones([k, k])
g = nx.generators.community.stochastic_block_model(sizes, p)
a = nx.adjacency_matrix(g)
sdp1_admm_py(a, k)