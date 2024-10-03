.class public final Lg0/f$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/f;->d(Lg0/f$c;Lg0/f$e;IZZ)Lg0/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lg0/f$c;

.field final synthetic h:Z

.field final synthetic i:Landroid/view/ViewGroupOverlay;

.field final synthetic j:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic k:Z

.field final synthetic l:Landroid/view/ViewOverlay;


# direct methods
.method constructor <init>(Lg0/f$c;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V
    .locals 0

    iput-object p1, p0, Lg0/f$g;->g:Lg0/f$c;

    iput-boolean p2, p0, Lg0/f$g;->h:Z

    iput-object p3, p0, Lg0/f$g;->i:Landroid/view/ViewGroupOverlay;

    iput-object p4, p0, Lg0/f$g;->j:Landroid/graphics/drawable/GradientDrawable;

    iput-boolean p5, p0, Lg0/f$g;->k:Z

    iput-object p6, p0, Lg0/f$g;->l:Landroid/view/ViewOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg0/f$g;->g:Lg0/f$c;

    iget-boolean v0, p0, Lg0/f$g;->h:Z

    invoke-interface {p1, v0}, Lg0/f$c;->onLaunchAnimationEnd(Z)V

    iget-object p1, p0, Lg0/f$g;->i:Landroid/view/ViewGroupOverlay;

    iget-object v0, p0, Lg0/f$g;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lg0/f$g;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg0/f$g;->l:Landroid/view/ViewOverlay;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lg0/f$g;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lg0/f$g;->g:Lg0/f$c;

    iget-boolean p2, p0, Lg0/f$g;->h:Z

    invoke-interface {p1, p2}, Lg0/f$c;->onLaunchAnimationStart(Z)V

    iget-object p1, p0, Lg0/f$g;->i:Landroid/view/ViewGroupOverlay;

    iget-object p0, p0, Lg0/f$g;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
