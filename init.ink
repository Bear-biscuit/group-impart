INCLUDE group_sdk.ink
INCLUDE role.ink
INCLUDE items.ink
INCLUDE battle.ink
INCLUDE utils.ink
INCLUDE store.ink
INCLUDE equipment.ink
INCLUDE equip_event.ink
INCLUDE backpack.ink
INCLUDE work.ink
INCLUDE effect.ink
INCLUDE rule.ink
INCLUDE random_event.ink
INCLUDE slaves/slave.ink
INCLUDE slaves/slave_battle.ink
INCLUDE slaves/slave_flee.ink


VAR player_date = -1

CONST max_action_count = 4
VAR action_count = max_action_count
VAR money = 50

VAR max_strength = 100
VAR max_libido = 100
VAR max_san = 100

VAR strength = 30
VAR libido = 0
VAR san = 100
VAR init_item_count = 1

VAR strength_add_ratio = 1.0
VAR san_add_ratio = 1.0
VAR libido_add_ratio = 1.0
VAR money_add_ratio = 1.0

VAR strength_reduce_ratio = 1.0
VAR san_reduce_ratio = 1.0
VAR libido_reduce_ratio = 1.0
VAR money_reduce_ratio = 1.0

VAR is_slave = false
VAR owner = ""
VAR owner_id = ""
VAR slave_count = 0


欢迎来到{group}银趴！

这是一个开放文字互动游戏，可能包含性暗示内容。

首次游玩时请务必查看游戏介绍，创建角色后无法重置。

+ [快速入门]

    你每天有 {max_action_count} 次行动机会。

    游戏目标是将所有群友调教成你的星怒，同时保护好自己的贞操。
 
    玩家的实力由战斗力、性欲和理智三种属性决定（上限为100）。

    战斗力的提升能够增加击败对手的胜算，并提高被攻击时的反击概率。然而，这种提升存在边际效应。

    性欲决定了你的基本状态。性欲低时，你会免疫某些道具的效果，但也无法使用某些道具。随着时间推移，性欲会缓慢下降。

    当性欲到达上限时会触发「高潮」，将大幅降低你的理智，并将性欲降低到正常水平。

    理智影响某些随机事件的发生。理智过低时，你会陷入昏迷，无法行动，任人宰割。

    道具是重要的游戏资源，可以随机获得或在商店使用金币购买。每天可抽取 {init_item_count} 个普通道具。

    在战斗中击败对手或使用道具可以将其捕获为你的星怒。

    ++ [游戏帮助] -> rule

    ++ [创建角色] -> remake

+ [创建角色] -> remake

===new_round===

{
    - sys_date != player_date and init_item_count > 0:
    ~ player_date = sys_date
        新的一天开始了
        -> random_item
}


~ temp can_action = action_count > 0
{ can_action > 0:
    你今天还有 {action_count} 次行动机会。
    - else:
    你太累了以至于无法行动...
}

{ has_slave():
    + [我的星怒] -> slaves
}
{ is_slave:
    你是 {owner} 的星怒。

    + [袭击主人] -> owners
    + [尝试逃脱] -> slave_flee
    + [冥想] -> owners
    + [自慰] -> owners // 立即高潮一次

    - else:
    {can_action:
        + [袭击{target}$member] -> battle
        + [打工] -> work
    }
    + [穿戴装备] -> equip
    + [前往商店] -> store
}

+ [资产管理] -> new_round
+ [查看背包] -> backpack
+ [查看属性] -> effect
+ [游戏帮助] -> rule

-> END

===owners===

-> new_round