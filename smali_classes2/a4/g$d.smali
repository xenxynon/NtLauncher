.class public final La4/g$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/g;->g(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/android/launcher3/folder/BigFolderIcon;

.field final synthetic h:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic i:Lcom/android/launcher3/BubbleTextView;

.field final synthetic j:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/BubbleTextView;Ly5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/BigFolderIcon;",
            "Lcom/android/launcher3/folder/PreviewBackground;",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ly5/a<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, La4/g$d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    iput-object p2, p0, La4/g$d;->h:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object p3, p0, La4/g$d;->i:Lcom/android/launcher3/BubbleTextView;

    iput-object p4, p0, La4/g$d;->j:Ly5/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p1, Lcom/android/launcher3/folder/PreviewBackground;->SCALE:Landroid/util/Property;

    iget-object v0, p0, La4/g$d;->h:Lcom/android/launcher3/folder/PreviewBackground;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, La4/g$d;->i:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, La4/g$d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object p1, p0, La4/g$d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, La4/g$d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BigFolderIcon;->setForceHideDot(Z)V

    iget-object p0, p0, La4/g$d;->j:Ly5/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ly5/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, La4/g$d;->g:Lcom/android/launcher3/folder/BigFolderIcon;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BigFolderIcon;->setForceHideDot(Z)V

    return-void
.end method
