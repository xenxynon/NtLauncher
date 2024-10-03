.class Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->from(Landroid/view/View;Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Lcom/android/launcher3/util/RunnableList;)Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onEndCallback:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;->val$onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaunchAnimationEnd()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;->val$onEndCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method
