.class public final synthetic Lcom/android/quickstep/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Landroid/os/Bundle;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/m3;->g:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    iput-object p2, p0, Lcom/android/quickstep/m3;->h:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/quickstep/m3;->i:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/m3;->g:Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    iget-object v1, p0, Lcom/android/quickstep/m3;->h:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/quickstep/m3;->i:Ljava/util/function/Function;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->z(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Landroid/os/Bundle;Ljava/util/function/Function;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void
.end method
