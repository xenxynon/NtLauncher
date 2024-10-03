.class public final Lcom/nothing/cardwidget/battery/AttributeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animBatteryEnter:Landroid/animation/Animator;

.field private animBatteryExit:Landroid/animation/Animator;

.field private animChargingEnter:Landroid/animation/Animator;

.field private animChargingExit:Landroid/animation/Animator;

.field private animDeviceEnter:Landroid/animation/Animator;

.field private animDeviceExit:Landroid/animation/Animator;

.field private aodPermissionDrawable:Landroid/graphics/drawable/Drawable;

.field private batteryLevelTvColor:Ljava/lang/Integer;

.field private chargingDrawable:Landroid/graphics/drawable/Drawable;

.field private isAod:Ljava/lang/Boolean;

.field private lowBatteryLevelColor:Ljava/lang/Integer;

.field private normalLevelColor:Ljava/lang/Integer;

.field private permissionBgDrawable:Landroid/graphics/drawable/Drawable;

.field private permissionStr:Ljava/lang/String;

.field private permissionTvColor:Ljava/lang/Integer;

.field private powerSaveDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getAnimBatteryEnter()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animBatteryEnter:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getAnimBatteryExit()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animBatteryExit:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getAnimChargingEnter()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animChargingEnter:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getAnimChargingExit()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animChargingExit:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getAnimDeviceEnter()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animDeviceEnter:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getAnimDeviceExit()Landroid/animation/Animator;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animDeviceExit:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getAodPermissionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->aodPermissionDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getBatteryLevelTvColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->batteryLevelTvColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getChargingDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->chargingDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getLowBatteryLevelColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->lowBatteryLevelColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNormalLevelColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->normalLevelColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPermissionBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getPermissionStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionStr:Ljava/lang/String;

    return-object p0
.end method

.method public final getPermissionTvColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionTvColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPowerSaveDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->powerSaveDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getRemoteResource(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk2/a;->a:Lk2/a$a;

    const/16 v1, 0x10

    new-array v1, v1, [Ln5/k;

    const-string v2, "permissionStr"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/nothing/cardwidget/R$attr;->permissionStr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "isAod"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->isAod:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "animChargingEnter"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->animChargingEnter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "animChargingExit"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->animChargingExit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string v2, "animDeviceEnter"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->animDeviceEnter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-string v2, "animDeviceExit"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->animDeviceExit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const-string v2, "animBatteryEnter"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->animBatteryEnter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-string v2, "animBatteryExit"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->animBatteryExit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const-string v2, "aodPermissionDrawable"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->aodPermissionDrawable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const-string v2, "chargingDrawable"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->chargingDrawable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    const-string v2, "powerSaveDrawable"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->powerSaveDrawable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v1, v4

    const-string v2, "permissionBgDrawable"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->permissionBgDrawable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0xb

    aput-object v2, v1, v4

    const-string v2, "normalLevelColor"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->normalLevelColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0xc

    aput-object v2, v1, v4

    const-string v2, "lowBatteryLevelColor"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->lowBatteryLevelColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0xd

    aput-object v2, v1, v4

    const-string v2, "batteryLevelTvColor"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->batteryLevelTvColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0xe

    aput-object v2, v1, v4

    const-string v2, "permissionTvColor"

    invoke-virtual {v0, p2, v2}, Lk2/a$a;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->permissionTvColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    const/16 v4, 0xf

    aput-object v2, v1, v4

    invoke-static {v1}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lk2/a$a;->k(Landroid/util/AttributeSet;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget v4, Lcom/nothing/cardwidget/R$attr;->permissionStr:I

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    if-eqz p1, :cond_1

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->j(Landroid/content/Context;Landroid/util/AttributeSet;I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v4, Lcom/nothing/cardwidget/R$attr;->isAod:I

    if-ne v2, v4, :cond_4

    if-eqz p1, :cond_3

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1, v3}, Lk2/a$a;->d(Landroid/content/Context;Landroid/util/AttributeSet;IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_3
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget v4, Lcom/nothing/cardwidget/R$attr;->animChargingEnter:I

    if-ne v2, v4, :cond_6

    if-eqz p1, :cond_5

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/animation/Animator;

    move-result-object v5

    :cond_5
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animChargingEnter:Landroid/animation/Animator;

    goto :goto_0

    :cond_6
    sget v4, Lcom/nothing/cardwidget/R$attr;->animChargingExit:I

    if-ne v2, v4, :cond_8

    if-eqz p1, :cond_7

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/animation/Animator;

    move-result-object v5

    :cond_7
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animChargingExit:Landroid/animation/Animator;

    goto :goto_0

    :cond_8
    sget v4, Lcom/nothing/cardwidget/R$attr;->animDeviceEnter:I

    if-ne v2, v4, :cond_a

    if-eqz p1, :cond_9

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/animation/Animator;

    move-result-object v5

    :cond_9
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animDeviceEnter:Landroid/animation/Animator;

    goto/16 :goto_0

    :cond_a
    sget v4, Lcom/nothing/cardwidget/R$attr;->animDeviceExit:I

    if-ne v2, v4, :cond_c

    if-eqz p1, :cond_b

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/animation/Animator;

    move-result-object v5

    :cond_b
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animDeviceExit:Landroid/animation/Animator;

    goto/16 :goto_0

    :cond_c
    sget v4, Lcom/nothing/cardwidget/R$attr;->animBatteryEnter:I

    if-ne v2, v4, :cond_e

    if-eqz p1, :cond_d

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/animation/Animator;

    move-result-object v5

    :cond_d
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animBatteryEnter:Landroid/animation/Animator;

    goto/16 :goto_0

    :cond_e
    sget v4, Lcom/nothing/cardwidget/R$attr;->animBatteryExit:I

    if-ne v2, v4, :cond_10

    if-eqz p1, :cond_f

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/animation/Animator;

    move-result-object v5

    :cond_f
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animBatteryExit:Landroid/animation/Animator;

    goto/16 :goto_0

    :cond_10
    sget v4, Lcom/nothing/cardwidget/R$attr;->aodPermissionDrawable:I

    if-ne v2, v4, :cond_12

    if-eqz p1, :cond_11

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_11
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->aodPermissionDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_12
    sget v4, Lcom/nothing/cardwidget/R$attr;->chargingDrawable:I

    if-ne v2, v4, :cond_14

    if-eqz p1, :cond_13

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_13
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->chargingDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_14
    sget v4, Lcom/nothing/cardwidget/R$attr;->powerSaveDrawable:I

    if-ne v2, v4, :cond_16

    if-eqz p1, :cond_15

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_15
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->powerSaveDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_16
    sget v4, Lcom/nothing/cardwidget/R$attr;->permissionBgDrawable:I

    if-ne v2, v4, :cond_18

    if-eqz p1, :cond_17

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->g(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_17
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionBgDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_18
    sget v4, Lcom/nothing/cardwidget/R$attr;->normalLevelColor:I

    if-ne v2, v4, :cond_1a

    if-eqz p1, :cond_19

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_19
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->normalLevelColor:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1a
    sget v4, Lcom/nothing/cardwidget/R$attr;->lowBatteryLevelColor:I

    if-ne v2, v4, :cond_1c

    if-eqz p1, :cond_1b

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1b
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->lowBatteryLevelColor:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1c
    sget v4, Lcom/nothing/cardwidget/R$attr;->batteryLevelTvColor:I

    if-ne v2, v4, :cond_1e

    if-eqz p1, :cond_1d

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1d
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->batteryLevelTvColor:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1e
    sget v4, Lcom/nothing/cardwidget/R$attr;->permissionTvColor:I

    if-ne v2, v4, :cond_0

    if-eqz p1, :cond_1f

    sget-object v2, Lk2/a;->a:Lk2/a$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, p2, p1, v1}, Lk2/a$a;->e(Landroid/content/Context;Landroid/util/AttributeSet;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_1f
    iput-object v5, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionTvColor:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_20
    return-void
.end method

.method public final isAod()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAnimBatteryEnter(Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animBatteryEnter:Landroid/animation/Animator;

    return-void
.end method

.method public final setAnimBatteryExit(Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animBatteryExit:Landroid/animation/Animator;

    return-void
.end method

.method public final setAnimChargingEnter(Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animChargingEnter:Landroid/animation/Animator;

    return-void
.end method

.method public final setAnimChargingExit(Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animChargingExit:Landroid/animation/Animator;

    return-void
.end method

.method public final setAnimDeviceEnter(Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animDeviceEnter:Landroid/animation/Animator;

    return-void
.end method

.method public final setAnimDeviceExit(Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->animDeviceExit:Landroid/animation/Animator;

    return-void
.end method

.method public final setAod(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->isAod:Ljava/lang/Boolean;

    return-void
.end method

.method public final setAodPermissionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->aodPermissionDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setBatteryLevelTvColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->batteryLevelTvColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setChargingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->chargingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setLowBatteryLevelColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->lowBatteryLevelColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setNormalLevelColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->normalLevelColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setPermissionBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setPermissionStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionStr:Ljava/lang/String;

    return-void
.end method

.method public final setPermissionTvColor(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->permissionTvColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setPowerSaveDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/cardwidget/battery/AttributeHelper;->powerSaveDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
