.class final Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/AssistContentRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AssistDataReceiver"
.end annotation


# instance fields
.field private final mCallbackKey:Ljava/lang/Object;

.field private final mParentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/quickstep/util/AssistContentRequester;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Lcom/android/quickstep/util/AssistContentRequester;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mCallbackKey:Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/quickstep/util/AssistContentRequester;->access$000(Lcom/android/quickstep/util/AssistContentRequester;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mParentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic R(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->lambda$onHandleAssistData$0(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method private static synthetic lambda$onHandleAssistData$0(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/quickstep/util/AssistContentRequester$Callback;->onAssistContentAvailable(Landroid/app/assist/AssistContent;)V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/assist/AssistContent;

    const-string v0, "AssistContentRequester"

    if-nez p1, :cond_1

    const-string p0, "Received AssistData, but no AssistContent found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/AssistContentRequester;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/android/quickstep/util/AssistContentRequester;->access$000(Lcom/android/quickstep/util/AssistContentRequester;)Ljava/util/Map;

    move-result-object v2

    iget-object p0, p0, Lcom/android/quickstep/util/AssistContentRequester$AssistDataReceiver;->mCallbackKey:Ljava/lang/Object;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/AssistContentRequester$Callback;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/android/quickstep/util/g;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/g;-><init>(Lcom/android/quickstep/util/AssistContentRequester$Callback;Landroid/app/assist/AssistContent;)V

    invoke-static {v1, v0}, Lcom/android/quickstep/util/AssistContentRequester;->access$100(Lcom/android/quickstep/util/AssistContentRequester;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const-string p0, "Callback received after calling UI was disposed of"

    goto :goto_0

    :cond_3
    const-string p0, "Callback received after Requester was collected"

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
