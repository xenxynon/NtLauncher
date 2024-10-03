.class public final Lcom/nothing/cardwidget/battery/view/BatteryContainerViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isSingleBattery(Lm2/a;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lm2/a;->j()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lm2/a;->m()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lm2/a;->l()I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
