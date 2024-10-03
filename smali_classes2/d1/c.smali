.class public final synthetic Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Landroid/view/ViewGroup;

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ld1/d$b;

.field public final synthetic o:Ld1/d$c;


# direct methods
.method public synthetic constructor <init>(IILandroid/view/ViewGroup;FFIILd1/d$b;Ld1/d$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld1/c;->g:I

    iput p2, p0, Ld1/c;->h:I

    iput-object p3, p0, Ld1/c;->i:Landroid/view/ViewGroup;

    iput p4, p0, Ld1/c;->j:F

    iput p5, p0, Ld1/c;->k:F

    iput p6, p0, Ld1/c;->l:I

    iput p7, p0, Ld1/c;->m:I

    iput-object p8, p0, Ld1/c;->n:Ld1/d$b;

    iput-object p9, p0, Ld1/c;->o:Ld1/d$c;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget v0, p0, Ld1/c;->g:I

    iget v1, p0, Ld1/c;->h:I

    iget-object v2, p0, Ld1/c;->i:Landroid/view/ViewGroup;

    iget v3, p0, Ld1/c;->j:F

    iget v4, p0, Ld1/c;->k:F

    iget v5, p0, Ld1/c;->l:I

    iget v6, p0, Ld1/c;->m:I

    iget-object v7, p0, Ld1/c;->n:Ld1/d$b;

    iget-object v8, p0, Ld1/c;->o:Ld1/d$c;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Ld1/d;->a(IILandroid/view/ViewGroup;FFIILd1/d$b;Ld1/d$c;Landroid/animation/ValueAnimator;)V

    return-void
.end method
