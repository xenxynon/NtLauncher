.class public final synthetic Lb3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic g:D

.field public final synthetic h:D

.field public final synthetic i:Landroid/graphics/Point;

.field public final synthetic j:I

.field public final synthetic k:Landroid/graphics/PointF;

.field public final synthetic l:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(DDLandroid/graphics/Point;ILandroid/graphics/PointF;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb3/w;->g:D

    iput-wide p3, p0, Lb3/w;->h:D

    iput-object p5, p0, Lb3/w;->i:Landroid/graphics/Point;

    iput p6, p0, Lb3/w;->j:I

    iput-object p7, p0, Lb3/w;->k:Landroid/graphics/PointF;

    iput-object p8, p0, Lb3/w;->l:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    iget-wide v0, p0, Lb3/w;->g:D

    iget-wide v2, p0, Lb3/w;->h:D

    iget-object v4, p0, Lb3/w;->i:Landroid/graphics/Point;

    iget v5, p0, Lb3/w;->j:I

    iget-object v6, p0, Lb3/w;->k:Landroid/graphics/PointF;

    iget-object v7, p0, Lb3/w;->l:Landroid/view/View;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lb3/x;->a(DDLandroid/graphics/Point;ILandroid/graphics/PointF;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
