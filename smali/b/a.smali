.class public Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;

.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;

.field public static final e:Landroid/view/animation/Interpolator;

.field public static final f:Landroid/view/animation/Interpolator;

.field public static final g:Landroid/view/animation/Interpolator;

.field public static final h:Landroid/view/animation/Interpolator;

.field public static final i:Landroid/view/animation/Interpolator;

.field public static final j:Landroid/view/animation/Interpolator;

.field public static final k:Landroid/view/animation/Interpolator;

.field public static final l:Landroid/view/animation/Interpolator;

.field public static final m:Landroid/view/animation/Interpolator;

.field public static final n:Landroid/view/animation/Interpolator;

.field public static final o:Landroid/view/animation/Interpolator;

.field public static final p:Landroid/view/animation/Interpolator;

.field public static final q:Landroid/view/animation/Interpolator;

.field public static final r:Landroid/view/animation/Interpolator;

.field public static final s:Landroid/view/animation/Interpolator;

.field public static final t:Landroid/view/animation/Interpolator;

.field public static final u:Landroid/view/animation/Interpolator;

.field public static final v:Landroid/view/animation/Interpolator;

.field public static final w:Landroid/view/animation/Interpolator;

.field public static final x:Landroid/view/animation/Interpolator;

.field public static final y:Landroid/view/animation/Interpolator;

.field public static final z:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    invoke-static {}, Lb/a;->a()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lb/a;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3d4ccccd    # 0.05f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->c:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v4, v2, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->d:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->e:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->f:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v8, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v8, v2, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->g:Landroid/view/animation/Interpolator;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    invoke-direct {v9, v8, v2, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v9, Lb/a;->h:Landroid/view/animation/Interpolator;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    invoke-direct {v10, v2, v2, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v10, Lb/a;->i:Landroid/view/animation/Interpolator;

    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v11, Lb/a;->j:Landroid/view/animation/Interpolator;

    sput-object v0, Lb/a;->k:Landroid/view/animation/Interpolator;

    sput-object v9, Lb/a;->l:Landroid/view/animation/Interpolator;

    sput-object v10, Lb/a;->m:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v2, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->n:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v2, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->o:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v2, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->p:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->q:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lb/a;->r:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lb/a;->s:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40200000    # 2.5f

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lb/a;->t:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v2, v9, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->u:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3fb33333    # 1.4f

    invoke-direct {v0, v8, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->v:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v8, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->w:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->x:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    sput-object v0, Lb/a;->y:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v8, v2, v4, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lb/a;->B:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private static a()Landroid/view/animation/PathInterpolator;
    .locals 8

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x3d4ccccd    # 0.05f

    const/4 v2, 0x0

    const v3, 0x3e088872

    const v4, 0x3d75c28f    # 0.06f

    const v5, 0x3e2aaa7e

    const v6, 0x3ecccccd    # 0.4f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const v1, 0x3e55553f    # 0.208333f

    const v2, 0x3f51eb85    # 0.82f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v7}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
