.class public final Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/NTFolderAnimationManager;->getBigFolderDestroyAnim(Ly5/a;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

.field final synthetic $callBack:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $firstChild:Landroid/view/View;


# direct methods
.method constructor <init>(Ly5/a;Landroid/view/View;Lcom/android/launcher3/folder/BigFolderIcon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/folder/BigFolderIcon;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$callBack:Ly5/a;

    iput-object p2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$firstChild:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$callBack:Ly5/a;

    invoke-interface {p1}, Ly5/a;->invoke()Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$firstChild:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$firstChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;->$bigFolderIcon:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
