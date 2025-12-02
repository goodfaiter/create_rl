from mjlab.rl import RslRlOnPolicyRunnerCfg

from .tasks.cartpole.cartpole_env_cfg import CARTPOLE_ENV_CFG

from mjlab.tasks.registry import register_mjlab_task
register_mjlab_task(
    task_id="CREATELAB-Cartpole",
    env_cfg=CARTPOLE_ENV_CFG,
    play_env_cfg=CARTPOLE_ENV_CFG,
    rl_cfg=RslRlOnPolicyRunnerCfg(),
)
