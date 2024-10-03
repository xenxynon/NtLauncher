.class Ld1/d$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/d;->d(Landroid/view/ViewGroup;Landroid/view/SurfaceControl;ILy0/a;Landroid/graphics/Rect;IIFFIILandroid/animation/Animator$AnimatorListener;F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Ld1/d$c;

.field final synthetic h:Landroid/view/ViewGroup;

.field final synthetic i:Ld1/d$b;

.field final synthetic j:Landroid/view/View;


# direct methods
.method constructor <init>(Ld1/d$c;Landroid/view/ViewGroup;Ld1/d$b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ld1/d$a;->g:Ld1/d$c;

    iput-object p2, p0, Ld1/d$a;->h:Landroid/view/ViewGroup;

    iput-object p3, p0, Ld1/d$a;->i:Ld1/d$b;

    iput-object p4, p0, Ld1/d$a;->j:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Ld1/d$a;->g:Ld1/d$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld1/d$c;->a()V

    :cond_0
    iget-object p1, p0, Ld1/d$a;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Ld1/d$a;->i:Ld1/d$b;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Ld1/d$a;->h:Landroid/view/ViewGroup;

    iget-object p0, p0, Ld1/d$a;->j:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
