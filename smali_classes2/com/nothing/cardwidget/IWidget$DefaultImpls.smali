.class public final Lcom/nothing/cardwidget/IWidget$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/IWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static send(Lcom/nothing/cardwidget/IWidget;Landroid/os/Message;)V
    .locals 0

    const-string p0, "msg"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static send(Lcom/nothing/cardwidget/IWidget;Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "r"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
