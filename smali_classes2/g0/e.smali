.class public final synthetic Lg0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic A:Landroid/view/ViewGroup;

.field public final synthetic B:Landroid/view/View;

.field public final synthetic C:Lg0/f$c;

.field public final synthetic D:Z

.field public final synthetic E:Z

.field public final synthetic F:Lg0/f$e;

.field public final synthetic G:Lkotlin/jvm/internal/z;

.field public final synthetic H:Lkotlin/jvm/internal/z;

.field public final synthetic g:Lkotlin/jvm/internal/x;

.field public final synthetic h:Lg0/f;

.field public final synthetic i:F

.field public final synthetic j:Lkotlin/jvm/internal/y;

.field public final synthetic k:I

.field public final synthetic l:Lkotlin/jvm/internal/z;

.field public final synthetic m:Lg0/f$e;

.field public final synthetic n:I

.field public final synthetic o:Lkotlin/jvm/internal/z;

.field public final synthetic p:I

.field public final synthetic q:Lkotlin/jvm/internal/z;

.field public final synthetic r:F

.field public final synthetic s:F

.field public final synthetic t:F

.field public final synthetic u:F

.field public final synthetic v:Z

.field public final synthetic w:Lkotlin/jvm/internal/x;

.field public final synthetic x:Landroid/view/ViewGroupOverlay;

.field public final synthetic y:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic z:Landroid/view/ViewOverlay;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;Lg0/f;FLkotlin/jvm/internal/y;ILkotlin/jvm/internal/z;Lg0/f$e;ILkotlin/jvm/internal/z;ILkotlin/jvm/internal/z;FFFFZLkotlin/jvm/internal/x;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lg0/f$c;ZZLg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lg0/e;->g:Lkotlin/jvm/internal/x;

    move-object v1, p2

    iput-object v1, v0, Lg0/e;->h:Lg0/f;

    move v1, p3

    iput v1, v0, Lg0/e;->i:F

    move-object v1, p4

    iput-object v1, v0, Lg0/e;->j:Lkotlin/jvm/internal/y;

    move v1, p5

    iput v1, v0, Lg0/e;->k:I

    move-object v1, p6

    iput-object v1, v0, Lg0/e;->l:Lkotlin/jvm/internal/z;

    move-object v1, p7

    iput-object v1, v0, Lg0/e;->m:Lg0/f$e;

    move v1, p8

    iput v1, v0, Lg0/e;->n:I

    move-object v1, p9

    iput-object v1, v0, Lg0/e;->o:Lkotlin/jvm/internal/z;

    move v1, p10

    iput v1, v0, Lg0/e;->p:I

    move-object v1, p11

    iput-object v1, v0, Lg0/e;->q:Lkotlin/jvm/internal/z;

    move v1, p12

    iput v1, v0, Lg0/e;->r:F

    move v1, p13

    iput v1, v0, Lg0/e;->s:F

    move/from16 v1, p14

    iput v1, v0, Lg0/e;->t:F

    move/from16 v1, p15

    iput v1, v0, Lg0/e;->u:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lg0/e;->v:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lg0/e;->w:Lkotlin/jvm/internal/x;

    move-object/from16 v1, p18

    iput-object v1, v0, Lg0/e;->x:Landroid/view/ViewGroupOverlay;

    move-object/from16 v1, p19

    iput-object v1, v0, Lg0/e;->y:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lg0/e;->z:Landroid/view/ViewOverlay;

    move-object/from16 v1, p21

    iput-object v1, v0, Lg0/e;->A:Landroid/view/ViewGroup;

    move-object/from16 v1, p22

    iput-object v1, v0, Lg0/e;->B:Landroid/view/View;

    move-object/from16 v1, p23

    iput-object v1, v0, Lg0/e;->C:Lg0/f$c;

    move/from16 v1, p24

    iput-boolean v1, v0, Lg0/e;->D:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lg0/e;->E:Z

    move-object/from16 v1, p26

    iput-object v1, v0, Lg0/e;->F:Lg0/f$e;

    move-object/from16 v1, p27

    iput-object v1, v0, Lg0/e;->G:Lkotlin/jvm/internal/z;

    move-object/from16 v1, p28

    iput-object v1, v0, Lg0/e;->H:Lkotlin/jvm/internal/z;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v29, p1

    iget-object v1, v0, Lg0/e;->g:Lkotlin/jvm/internal/x;

    iget-object v2, v0, Lg0/e;->h:Lg0/f;

    iget v3, v0, Lg0/e;->i:F

    iget-object v4, v0, Lg0/e;->j:Lkotlin/jvm/internal/y;

    iget v5, v0, Lg0/e;->k:I

    iget-object v6, v0, Lg0/e;->l:Lkotlin/jvm/internal/z;

    iget-object v7, v0, Lg0/e;->m:Lg0/f$e;

    iget v8, v0, Lg0/e;->n:I

    iget-object v9, v0, Lg0/e;->o:Lkotlin/jvm/internal/z;

    iget v10, v0, Lg0/e;->p:I

    iget-object v11, v0, Lg0/e;->q:Lkotlin/jvm/internal/z;

    iget v12, v0, Lg0/e;->r:F

    iget v13, v0, Lg0/e;->s:F

    iget v14, v0, Lg0/e;->t:F

    iget v15, v0, Lg0/e;->u:F

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lg0/e;->v:Z

    move/from16 v16, v1

    iget-object v1, v0, Lg0/e;->w:Lkotlin/jvm/internal/x;

    move-object/from16 v17, v1

    iget-object v1, v0, Lg0/e;->x:Landroid/view/ViewGroupOverlay;

    move-object/from16 v18, v1

    iget-object v1, v0, Lg0/e;->y:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v19, v1

    iget-object v1, v0, Lg0/e;->z:Landroid/view/ViewOverlay;

    move-object/from16 v20, v1

    iget-object v1, v0, Lg0/e;->A:Landroid/view/ViewGroup;

    move-object/from16 v21, v1

    iget-object v1, v0, Lg0/e;->B:Landroid/view/View;

    move-object/from16 v22, v1

    iget-object v1, v0, Lg0/e;->C:Lg0/f$c;

    move-object/from16 v23, v1

    iget-boolean v1, v0, Lg0/e;->D:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lg0/e;->E:Z

    move/from16 v25, v1

    iget-object v1, v0, Lg0/e;->F:Lg0/f$e;

    move-object/from16 v26, v1

    iget-object v1, v0, Lg0/e;->G:Lkotlin/jvm/internal/z;

    move-object/from16 v27, v1

    iget-object v0, v0, Lg0/e;->H:Lkotlin/jvm/internal/z;

    move-object/from16 v28, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v29}, Lg0/f;->a(Lkotlin/jvm/internal/x;Lg0/f;FLkotlin/jvm/internal/y;ILkotlin/jvm/internal/z;Lg0/f$e;ILkotlin/jvm/internal/z;ILkotlin/jvm/internal/z;FFFFZLkotlin/jvm/internal/x;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lg0/f$c;ZZLg0/f$e;Lkotlin/jvm/internal/z;Lkotlin/jvm/internal/z;Landroid/animation/ValueAnimator;)V

    return-void
.end method
