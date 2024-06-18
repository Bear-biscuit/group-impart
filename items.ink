VAR _loop_count = 0

LIST player_item_list = salve, painkiller, spray, taser, potion, whip

VAR salve_count = 0
VAR painkiller_count = 0
VAR spray_count = 0
VAR taser_count = 0
VAR potion_count = 0
VAR whip_count = 0

===function get_total_item_count()===
~ return blindfold_count + handcuffs_count + gag_count + rope_count + clamps_count + latex_count

===random_item===
~ temp item = LIST_RANDOM(LIST_ALL(player_item_list))

抽到了一个道具: <>{add_item(item)}{get_item_name(item)}
~ get_item_picture(item)
（{get_item_desc(item)}）


~_loop_count ++
{
    - _loop_count == init_item_count:
    ~ _loop_count = 0
        -> new_round
    - else:
        -> random_item
}

===function add_item(item)===
{item:
    - salve: ~ salve_count++
    - painkiller: ~ painkiller_count++
    - spray: ~ spray_count++
    - taser: ~ taser_count++
    - potion: ~ potion_count++
    - whip: ~ whip_count++
}

===function get_item_name(item)===

{ item:
    - salve: ~ return "药膏"
    - painkiller: ~ return "止痛药"
    - spray: ~ return "防狼喷雾"
    - taser: ~ return "电击器"
    - whip: ~ return "鞭子"
    - potion: ~ return "媚药"
    - else: ~ return ""
}


===function get_item_desc(item)===

{ item:
    - salve:
    ~ return "主动道具，使用后回复理智，增加性欲。"

    - painkiller: 
    ~ return "被动道具，下次受到的理智伤害减少 80%。"

    - spray:
    ~ return "被动道具，下次反击成功概率提升为 100%"

    - taser: 
    ~ return "袭击道具，增加袭击成功概率，成功后回复理智。"

    - whip: 
    ~ return "袭击道具，降低目标的战斗力与理智。"

    - potion: 
    ~ return "主动道具，可以对自己或目标使用，增加性欲。"

    - else: ~ return ""
}

===function get_item_picture(item)===
{ item:
    - salve:
    {shuffle:
        - 这款药膏质地柔滑，涂抹在肌肤上后迅速吸收，带来冰凉的触感，减轻疼痛并带来微妙的愉悦。
        - 药膏中蕴含的特殊成分能够快速渗透皮肤，缓解疼痛的同时，让人感受到一丝丝的舒适与放松。
        - 这款药膏散发出淡淡的香气，涂抹后肌肤变得光滑细腻，带来镇痛的同时也给人带来一种隐秘的享受。
    }

    - painkiller:
    {shuffle:
        - 这颗止痛药小巧而有效，迅速缓解身体的疼痛，让人感受到无痛的愉悦。
        - 止痛药吞下后不久，疼痛感逐渐消退，取而代之的是一种全身舒畅的感觉。
        - 这款止痛药具有快速镇痛的效果，服用后让人沉浸在无痛的世界中，感受到身体的轻松和愉悦。
    }
    
    - spray:
    {shuffle:
        - 这款防狼喷雾小巧便携，喷出后能够迅速击退敌人，保护你的安全，同时带来一丝快感。
        - 防狼喷雾设计精巧，释放出的气体能够瞬间麻痹对手，让你在危急时刻感受到一丝掌控的满足。
        - 这款防狼喷雾喷出后有强烈的刺激性气味，能够迅速让对方失去战斗力，给你带来安全感和隐秘的愉悦。
    }
    
    - taser:
    {shuffle:
        - 这款电击器小巧而强力，释放出的电流能够瞬间击中目标，让对方体验到强烈的电击快感。
        - 电击器的设计精巧，握在手中舒适而有力，轻轻一按便能让电流穿过身体，带来不可抗拒的刺激。
        - 这款电击器外观时尚，功能强大，电击瞬间让人全身颤抖，体验到电流带来的麻痹与快感。
    }
    
    - whip:
    {shuffle:
        - 这条鞭子柔韧而坚固，鞭梢轻轻一抽便能在皮肤上留下红痕，让人感受到痛苦与快感交织的极致体验。
        - 鞭子的设计充满诱惑，鞭身细长而有力，每一次挥动都能精准地击中目标，带来强烈的刺激。
        - 这款鞭子外观精美，鞭梢柔软却不失力量，鞭打时能让人感受到深入骨髓的快感与疼痛。
    }

    
    - potion:
    {shuffle:
        - 这瓶媚药散发出诱人的香气，瓶中的液体微微闪光，仿佛在暗示它的强大效果。
        - 瓶中的媚药液体清澈透明，散发出一股诱人的芳香，让人不禁想要一尝究竟。
        - 媚药的颜色透着一抹神秘的紫红，香味浓郁甜美，令人难以抗拒。
    }

}

===function find_item()===
~ temp item = LIST_RANDOM(LIST_ALL(player_item_list))
~ add_item(item)

你捡到一个道具: {get_item_name(item)}
{get_item_picture(item)}
{get_item_desc(item)}
