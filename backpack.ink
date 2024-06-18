===backpack===
//背包描述
    {shuffle:
        - 你轻轻拉开背包的拉链，感受到里面的物品散发出一种神秘的气息。
        - 打开背包的那一瞬间，你的心跳加快了，里面的东西让你充满期待。
        - 你缓缓打开背包，心中涌起一股无法抑制的兴奋感。
        - 你拉开背包，感受到其中的物品带来的微妙触感，内心充满了期待。
        - 打开背包的瞬间，一股兴奋涌上心头，你忍不住去探索其中的奥秘。
        - 你拉开背包的拉链，心跳加速，感觉里面的东西在等待着你去发现。
        - 当你打开背包时，心中涌起一股难以言喻的兴奋和期待。
        - 你缓缓拉开背包的拉链，感受到一股神秘的气息迎面而来。
        - 打开背包的那一刻，你的心跳加快，充满了对未知的期待。
        - 你轻轻拉开背包的拉链，感觉到里面的东西在向你招手，心中充满了兴奋和渴望。
    }
道具:

{ salve_count > 0:
    \- 【道具】 {get_item_name(salve)} * {salve_count}:
    \-\- {get_item_desc(salve)}
}
{ painkiller_count > 0:
    \- 【道具】 {get_item_name(painkiller)} * {painkiller_count}:
    \-\- {get_item_desc(painkiller)}
}
{ spray_count > 0:
    \- 【道具】 {get_item_name(spray)} * {spray_count}:
    \-\- {get_item_desc(spray)}
}
{ taser_count > 0:
    \- 【道具】 {get_item_name(taser)} * {taser_count}:
    \-\- {get_item_desc(taser)}
}
{ potion_count > 0:
    \- 【道具】 {get_item_name(potion)} * {potion_count}:
    \-\- {get_item_desc(potion)}
}
{ whip_count > 0:
    \- 【道具】 {get_item_name(whip)} * {whip_count}:
    \-\- {get_item_desc(whip)}
}


装备:

{ get_total_equips_count() <= 0:
    \- 暂无装备
}

{ blindfold_count > 0:
    \- 【装备】 {get_equip_name(blindfold)} * {blindfold_count}:
    \-\- {get_equip_desc(blindfold)}
}
{ handcuffs_count > 0:
    \- 【装备】 {get_equip_name(handcuffs)} * {handcuffs_count}:
    \-\- {get_equip_desc(handcuffs)}
}
{ gag_count > 0:
    \- 【装备】 {get_equip_name(gag)} * {gag_count}:
    \-\- {get_equip_desc(gag)}
}
{ rope_count > 0:
    \- 【装备】 {get_equip_name(rope)} * {rope_count}:
    \-\- {get_equip_desc(rope)}
}
{ clamps_count > 0:
    \- 【装备】 {get_equip_name(clamps)} * {clamps_count}:
    \-\- {get_equip_desc(clamps)}
}
{ latex_count > 0:
    \- 【装备】 {get_equip_name(latex)} * {latex_count}:
    \-\- {get_equip_desc(latex)}
}

+ [返回] -> new_round