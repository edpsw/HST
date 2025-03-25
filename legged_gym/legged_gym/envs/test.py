import torch    
import numpy as np
def test(num_envs=100, device='cuda'):    
    reach_goal_timer = torch.zeros(num_envs, dtype=torch.float, device=device, requires_grad=False)
    reach_goal_delay = 1 / 10
    dt = 0.02 
    next_flag = reach_goal_timer > reach_goal_delay / dt
    print(next_flag)
    # cur_goal_idx[next_flag] += 1
    # reach_goal_timer[next_flag] = 0

test()