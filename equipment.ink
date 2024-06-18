LIST equips = blindfold, handcuffs, gag, rope, clamps, latex

CONST blindfold_durability = 7
CONST handcuffs_durability = 12
CONST gag_durability = 9
CONST rope_durability = 9
CONST clamps_durability = 7
CONST latex_durability = 15

VAR blindfold_count = 0
VAR handcuffs_count = 0
VAR gag_count = 0
VAR rope_count = 0
VAR clamps_count = 0
VAR latex_count = 0

===function get_total_equips_count()===
~ return blindfold_count + handcuffs_count + gag_count + rope_count + clamps_count + latex_count

====function get_sturdiness_text(i)===
{
    - i < 5: ~ return "非常脆弱"
    - i < 8: ~ return "脆弱不堪"
    - i < 11: ~ return "容易磨损"
    - i < 14: ~ return "经久耐用"
    - i < 17: ~ return "非常坚固"
    - else: ~ return "坚不可摧"
}

===function get_equip_name(eq)===
{ eq:
    - blindfold: ~ return "眼罩"
    - handcuffs: ~ return "手铐"
    - gag: ~ return "口球"
    // 性欲>40
    - rope: ~ return "绳子"
    // 性欲>60
    - clamps: ~ return "乳夹"
    - latex: ~ return "乳胶衣"
}

===function get_equip_desc(eq)===
{ eq:
    - blindfold:
    ~ return "提升穿戴者性欲的增加倍率。"

    - handcuffs:
    ~ return "降低穿戴者战斗力，提升理智恢复倍率。"

    - gag:
    ~ return "穿戴者不会自动恢复理智。"

    - rope:
    ~ return "提升穿戴者被袭击成功率，减少理智降低倍率。"

    - clamps:
    ~ return "穿戴者自动减少的性欲变为增加。"

    - latex:
    ~ return "穿戴者减少的理智会转换为性欲，提升性欲增加倍率。"
}

===function get_equip_info(eq)===
{ eq:
    - blindfold:
    ~ return "性欲增加倍率提升 50%"

    - handcuffs:
    ~ return "战斗力降低 30，理智恢复倍率提升 50%"

    - gag:
    ~ return "禁用自动理智恢复"

    - rope:
    ~ return "被袭击成功率增加 20%，理智降低倍率减少 25%"

    - clamps:
    ~ return "自动减少的性欲变为增加"

    - latex:
    ~ return "将减少的理智转换为性欲（高潮除外），性欲增加倍率提提升 50%"
}

===function get_equip_picture(eq)===
{ eq:
    - blindfold:
    {shuffle:
        - 一条黑色的眼罩，柔软的质地能够轻柔地覆盖双眼，让你完全沉浸在黑暗中。
        - 眼罩质地细腻，轻盈而柔软，戴上后仿佛置身于神秘的梦境之中，让你的感官得到极致的放松。
        - 这款眼罩采用舒适的材质，细腻的触感给人一种安心的感觉，能够有效地遮挡视线。
    }
    - handcuffs:
    {shuffle:
        - 这对手铐由坚固的金属制成，表面光滑而冰冷，一旦锁上，几乎无法轻易挣脱。
        - 手铐的设计简洁而坚固，用以束缚双手，给人一种无法逃脱的紧迫感。
        - 手铐上刻有精美的花纹，虽然外表华丽，但一旦戴上，就意味着完全的束缚和控制。
    }

    - gag:
    {shuffle:
        - 这个口球由柔软的橡胶制成，有着适中的大小，能够完全填满口腔，让人无法言语。
        - 口球表面光滑，系带结实，能够紧紧地固定在口中，阻止言语的发出，给予穿戴者完全的沉默。
        - 口球的设计精巧，带来一种同时束缚和享受的感觉，让穿戴者无法言语却感受到控制的愉悦。
    }

    - rope:
    {shuffle:
        - 这根绳子纤细而坚固，具有一定的弹性，能够灵活地绑缚双手或其他身体部位。
        - 绳子表面光滑，柔软舒适，绑缚时不会刺激皮肤，却能牢牢地固定住目标。
        - 绳子的设计巧妙，能够满足各种特殊需求，让人体验到极致的束缚和放松。
    }

    - clamps:
    {shuffle:
        - 这款乳夹造型精美，外观充满诱惑，使用时能够精准地刺激乳头，引发强烈的快感。
        - 乳夹的设计别致，轻轻一夹即可将乳头固定在夹具之间，让穿戴者沉浸在无法抵御的愉悦之中。
        - 这对乳夹具有可调节的力度，能够满足不同人的需求，让乳头在夹夹中感受到变幻莫测的刺激。
    }

    - latex:
    {shuffle:
        - 这件乳胶衣贴身而紧凑，能够将身体包裹得严严实实，展现出诱人的曲线。
        - 乳胶衣具有高弹性和柔软的质地，紧贴在皮肤上，仿佛第二层肌肤般舒适。
        - 这件乳胶衣设计独特，充满性感和挑逗，穿上它让你感受到一种全身都被束缚的愉悦。
    }
}