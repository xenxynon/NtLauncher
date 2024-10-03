.class Lcom/android/launcher3/CellLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-static {p1}, Lcom/android/launcher3/CellLayout;->access$000(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->stripEmptyScreensAfterAnimationEnd(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$3;->val$view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
