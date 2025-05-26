# 스킬: 커스텀 다이아몬드 검 (1001f)으로 피해를 입혔을 때 발동
# 실행 주체: @s (플레이어)

# 스킬 효과음 (휩쓸기 소리)
execute at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1.0 0.8

# 스킬 파티클 (넓은 휩쓸기 효과)
# execute at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.1 0.5 0.1 1 force
execute at @s run particle minecraft:crit ~ ~1 ~ 1.5 0.5 1.5 0.15 150 force
execute at @s run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force

# 주변 엔티티에게 광역 피해 (플레이어 제외, 아이템/경험치 구슬 등 비공격 대상 제외)
# 범위: 플레이어 중심 반경 4블록 (0.1 블록 이상 떨어진 대상부터)
# 피해량: 4 (하트 2칸)
# 피해 유형: 플레이어 공격


# 이 함수가 실행된 후 발전 과제를 취소하여 반복 실행이 가능하도록 합니다.
advancement revoke @s only namespace:skills/on_damage/diamond_sword_custom_1001

# 개발자 메시지 (필요시 주석 해제)
tellraw @s {"text":"[스킬 발동] 넓은 휩쓸기 공격!","color":"gold"}