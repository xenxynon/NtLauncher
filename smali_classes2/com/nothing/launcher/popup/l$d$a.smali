.class Lcom/nothing/launcher/popup/l$d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/launcher/popup/l$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Lcom/nothing/launcher/popup/l$d;


# direct methods
.method constructor <init>(Lcom/nothing/launcher/popup/l$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/popup/l$d$a;->g:Lcom/nothing/launcher/popup/l$d;

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

    iget-object p1, p0, Lcom/nothing/launcher/popup/l$d$a;->g:Lcom/nothing/launcher/popup/l$d;

    invoke-static {p1}, Lcom/nothing/launcher/popup/l$d;->H(Lcom/nothing/launcher/popup/l$d;)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/l$d$a;->g:Lcom/nothing/launcher/popup/l$d;

    iget-object p1, p1, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/l$d$a;->g:Lcom/nothing/launcher/popup/l$d;

    iget-object p1, p1, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/l$d$a;->g:Lcom/nothing/launcher/popup/l$d;

    iget-object p1, p1, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/nothing/launcher/popup/l$d$a;->g:Lcom/nothing/launcher/popup/l$d;

    iget-object p0, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    return-void
.end method
