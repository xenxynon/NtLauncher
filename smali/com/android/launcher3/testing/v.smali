.class public final synthetic Lcom/android/launcher3/testing/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/util/function/Supplier;

.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/v;->a:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/launcher3/testing/v;->b:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/launcher3/testing/v;->c:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/testing/v;->a:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/launcher3/testing/v;->b:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/launcher3/testing/v;->c:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/testing/TestInformationHandler;->q(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
