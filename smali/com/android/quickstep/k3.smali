.class public final synthetic Lcom/android/quickstep/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/QuickstepTestInformationHandler;

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/QuickstepTestInformationHandler;Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k3;->a:Lcom/android/quickstep/QuickstepTestInformationHandler;

    iput-object p2, p0, Lcom/android/quickstep/k3;->b:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/quickstep/k3;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/k3;->a:Lcom/android/quickstep/QuickstepTestInformationHandler;

    iget-object v1, p0, Lcom/android/quickstep/k3;->b:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/quickstep/k3;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/QuickstepTestInformationHandler;->t(Lcom/android/quickstep/QuickstepTestInformationHandler;Ljava/util/function/Consumer;Ljava/util/concurrent/CountDownLatch;)Lcom/android/quickstep/util/TISBindHelper;

    move-result-object p0

    return-object p0
.end method
