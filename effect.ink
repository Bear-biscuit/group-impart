===effect===
【状态】
\- 战斗力: {strength} / {max_strength}
\- 理智: {san} / {max_san}
\- 性欲: {libido} / {max_libido}
\- 金币: {money}

异常状态: 无

【装备】
{ LIST_COUNT(equips) == 0:
    无
}

{ equips ? blindfold:
    \- {get_equip_name(blindfold)}: get_equip_info(blindfold)
}
{ equips ? handcuffs:
    \- {get_equip_name(handcuffs)}: get_equip_info(handcuffs)
}
{ equips ? gag:
    \- {get_equip_name(gag)}: get_equip_info(gag)
}
{ equips ? rope:
    \- {get_equip_name(rope)}: get_equip_info(rope)
}
{ equips ? clamps:
    \- {get_equip_name(clamps)}: get_equip_info(clamps)
}
{ equips ? latex:
    \- {get_equip_name(latex)}: get_equip_info(latex)
}

-> new_round