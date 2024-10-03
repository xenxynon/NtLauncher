.class public final Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/cardwidget/utils/ServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final weakHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nothing/cardwidget/utils/ServiceBindHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V
    .locals 1

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceBindHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;->weakHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getHelper()Lcom/nothing/cardwidget/utils/ServiceBindHelper;
    .locals 0

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;->weakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper$CallbackHandler;->weakHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/utils/ServiceBindHelper;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/nothing/cardwidget/utils/ServiceBindHelper;->access$onRetryBindService(Lcom/nothing/cardwidget/utils/ServiceBindHelper;)V

    :cond_0
    return-void
.end method
