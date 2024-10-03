.class public final Lcom/nothing/cardhost/d$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardhost/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nothing/cardhost/d;


# direct methods
.method public constructor <init>(Lcom/nothing/cardhost/d;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const-string v0, "_looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/cardhost/d$c;->a:Lcom/nothing/cardhost/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/nothing/cardhost/d$c;->a:Lcom/nothing/cardhost/d;

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/d;->t(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/nothing/cardhost/d$c;->a:Lcom/nothing/cardhost/d;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/nothing/cardservice/CardWidgetViewInfo;

    invoke-virtual {p0, v0, v1, p1}, Lcom/nothing/cardhost/d;->J(IILcom/nothing/cardservice/CardWidgetViewInfo;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/nothing/cardhost/d$c;->a:Lcom/nothing/cardhost/d;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/nothing/cardservice/CardWidgetMetaInfo;

    invoke-virtual {p0, v0, p1}, Lcom/nothing/cardhost/d;->y(ILcom/nothing/cardservice/CardWidgetMetaInfo;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/nothing/cardhost/d$c;->a:Lcom/nothing/cardhost/d;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/nothing/cardservice/CardWidgetViewInfo;

    invoke-virtual {p0, v0, p1}, Lcom/nothing/cardhost/d;->H(ILcom/nothing/cardservice/CardWidgetViewInfo;)V

    :goto_0
    return-void
.end method
