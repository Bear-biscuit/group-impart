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

//最大行动次数
CONST max_action_count = 4
//行动次数
VAR action_count = max_action_count
VAR action_flag = false
VAR money = 50

//属性上限 战斗力，性欲，理智
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


/TODO 设计装备耐久
/TODO 星怒的逃脱

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
    ~ action_count = max_action_count
        新的一天开始了
        -> random_item
}
{ action_flag:
    ~ action_flag = false
    -> random_event
}

~ temp can_action = action_count > 0
{ can_action > 0:
    你今天还有 {action_count} 次行动机会。
    - else:
    {shuffle:
        - 你太累了以至于无法行动，身体仿佛被重重的铅压住，每一步都显得无比艰难。你只能停下来，等自己恢复一些体力。
        
        - 疲劳感如潮水般涌来，你已经无力再继续行动，双腿像灌了铅一样沉重。你必须停下来，休息一会儿。
        
        - 你感觉疲惫不堪，完全无法再继续，眼前的世界都变得模糊。你只能停下来，让自己恢复一些能量。
        
        - 疲劳彻底击垮了你，你已经无法再行动，身体似乎被重压。你需要停下来，等待体力恢复。
        
        - 你感到筋疲力尽，完全无法再前进，双脚沉重如铅。你必须停下来，等自己恢复一些力量。
        
        - 疲惫感如潮水般涌来，你已经无力再继续行动，双腿像灌了铅一样沉重。你只能停下来，休息一会儿。
        
        - 你感觉疲惫不堪，完全无法再继续，眼前的世界都变得模糊。你必须停下来，让自己恢复一些能量。
        
        - 疲劳彻底击垮了你，你已经无法再行动，身体似乎被重压。你需要停下来，等待体力恢复。
        
        - 你感到筋疲力尽，完全无法再前进，双脚沉重如铅。你只能停下来，等自己恢复一些力量。
        
        - 疲惫感如潮水般涌来，你已经无力再继续行动，双腿像灌了铅一样沉重。你必须停下来，休息一会儿。
        
        - 你感觉疲惫不堪，完全无法再继续，眼前的世界都变得模糊。你只能停下来，让自己恢复一些能量。
        
        - 疲劳彻底击垮了你，你已经无法再行动，身体似乎被重压。你需要停下来，等待体力恢复。
        
        - 你感到筋疲力尽，完全无法再前进，双脚沉重如铅。你必须停下来，等自己恢复一些力量。
        
        - 疲惫感如潮水般涌来，你已经无力再继续行动，双腿像灌了铅一样沉重。你只能停下来，休息一会儿。
        
        - 你感觉疲惫不堪，完全无法再继续，眼前的世界都变得模糊。你必须停下来，让自己恢复一些能量。
        
        - 疲劳彻底击垮了你，你已经无法再行动，身体似乎被重压。你需要停下来，等待体力恢复。
        
        - 你感到筋疲力尽，完全无法再前进，双脚沉重如铅。你只能停下来，等自己恢复一些力量。
        
        - 疲惫感如潮水般涌来，你已经无力再继续行动，双腿像灌了铅一样沉重。你必须停下来，休息一会儿。
        
        - 你感觉疲惫不堪，完全无法再继续，眼前的世界都变得模糊。你只能停下来，让自己恢复一些能量。
        
        - 疲劳彻底击垮了你，你已经无法再行动，身体似乎被重压。你需要停下来，等待体力恢复。
    }
}
{ san < 10:
    {shuffle:
        - 你的意识变得模糊不清，理智已经接近崩溃，无法再进行任何行动。你需要停下来，等待理智恢复。
        
        - 你的精神状态已经极度不稳定，理智过低，感到无法继续。你必须停下来，试图恢复一些清醒。
        
        - 你感到思绪混乱，理智已经几乎完全耗尽，无法再行动。你只能停下来，休息一会儿。
        
        - 你的头脑被无数混乱的念头占据，理智耗尽，无法继续。你需要停下来，让自己冷静下来。
        
        - 你的精神已经处于崩溃的边缘，理智过低，无法再前进。你必须停下来，等恢复一些理智。
        
        - 你感到头昏脑胀，理智已经几乎完全消失，无法继续行动。你只能停下来，恢复一些清醒。
        
        - 你的思维变得紊乱不堪，理智几乎耗尽，无法再进行任何行动。你需要停下来，恢复理智。
        
        - 你的精神状态已经极度不稳定，理智过低，无法继续。你只能停下来，等理智恢复。
        
        - 你的头脑充满了混乱的念头，理智耗尽，无法继续。你需要停下来，休息一下。
        
        - 你的精神已经濒临崩溃，理智过低，无法再行动。你必须停下来，等自己冷静下来。
        
        - 你的思维已经完全混乱，理智几乎完全消失，无法再进行任何行动。你只能停下来，恢复一些清醒。

        - 你感到精神恍惚，理智过低，无法继续行动。你需要停下来，等自己恢复一些理智。
        
        - 你的头脑已经几乎完全崩溃，理智耗尽，无法继续。你必须停下来，恢复一些清醒。
        
        - 你的精神状态极度不稳定，理智过低，感到无法继续前进。你只能停下来，等待理智恢复。
        
        - 你的头脑被无数混乱的思绪占据，理智耗尽，无法继续行动。你需要停下来，让自己冷静下来。
        
        - 你的精神已经处于崩溃的边缘，理智过低，无法再进行任何行动。你必须停下来，等理智恢复。
        
        - 你感到头昏脑胀，理智已经几乎完全消失，无法再行动。你只能停下来，恢复一些清醒。
        
        - 你的思维变得紊乱不堪，理智几乎耗尽，无法继续。你需要停下来，恢复一些理智。
        
        - 你的精神状态已经极度不稳定，理智过低，无法再前进。你只能停下来，等理智恢复。
        
        - 你的头脑充满了混乱的思绪，理智耗尽，无法继续行动。你需要停下来，休息一下。
    }
}

{ has_slave():
    + [我的星怒] -> slaves
}
{ is_slave:
    你是 {owner} 的星怒。

    + [袭击主人] -> owners
    + [尝试逃脱] -> slave_flee
    + [冥想] -> meditation
    + [自慰] -> mastur // 立即高潮一次

    - else:
    {can_action:
            { san >= 10:
                + [袭击{target}$member] -> battle
            }
        + [打工] -> work
    }
    + [穿戴装备] -> equip
    + [前往商店] -> store
}

// + [资产管理] -> new_round
+ [查看背包] -> backpack
+ [查看属性] -> effect
+ [游戏帮助] -> rule

-> END

===owners===

-> new_round