.class public final Lg0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/b$c;,
        Lg0/b$b;,
        Lg0/b$e;,
        Lg0/b$d;,
        Lg0/b$a;
    }
.end annotation


# static fields
.field public static final a:Lg0/b$c;

.field public static final b:Lg0/f$f;

.field private static final c:Lg0/f$f;

.field private static final d:Lg0/f$d;

.field private static final e:Lg0/f;

.field private static final f:Lg0/f;

.field private static final g:J

.field private static final h:Landroid/view/animation/Interpolator;

.field private static final i:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lg0/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg0/b$c;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg0/b;->a:Lg0/b$c;

    new-instance v1, Lg0/f$f;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    const-wide/16 v9, 0x96

    const-wide/16 v11, 0xb7

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lg0/f$f;-><init>(JJJJJ)V

    sput-object v1, Lg0/b;->b:Lg0/f$f;

    const-wide/16 v3, 0x0

    const-wide/16 v7, 0xc8

    const-wide/16 v9, 0xc8

    const-wide/16 v11, 0x0

    const/16 v13, 0x13

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lg0/f$f;->b(Lg0/f$f;JJJJJILjava/lang/Object;)Lg0/f$f;

    move-result-object v2

    sput-object v2, Lg0/b;->c:Lg0/f$f;

    new-instance v3, Lg0/f$d;

    sget-object v4, Lb/a;->a:Landroid/view/animation/Interpolator;

    const-string v5, "EMPHASIZED"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg0/b$c;->a(Lg0/b$c;)Landroid/view/animation/Interpolator;

    move-result-object v0

    sget-object v5, Lb/a;->m:Landroid/view/animation/Interpolator;

    const-string v6, "LINEAR_OUT_SLOW_IN"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/4 v7, 0x0

    const v8, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct {v3, v4, v0, v5, v6}, Lg0/f$d;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    sput-object v3, Lg0/b;->d:Lg0/f$d;

    new-instance v0, Lg0/f;

    invoke-direct {v0, v1, v3}, Lg0/f;-><init>(Lg0/f$f;Lg0/f$d;)V

    sput-object v0, Lg0/b;->e:Lg0/f;

    new-instance v0, Lg0/f;

    invoke-direct {v0, v2, v3}, Lg0/f;-><init>(Lg0/f$f;Lg0/f$d;)V

    sput-object v0, Lg0/b;->f:Lg0/f;

    invoke-virtual {v1}, Lg0/f$f;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x10a

    sub-long/2addr v0, v2

    sput-wide v0, Lg0/b;->g:J

    sget-object v0, Lb/a;->f:Landroid/view/animation/Interpolator;

    sput-object v0, Lg0/b;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v7, v9, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lg0/b;->i:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lg0/b;->g:J

    return-wide v0
.end method

.method public static final synthetic b()Lg0/f;
    .locals 1

    sget-object v0, Lg0/b;->e:Lg0/f;

    return-object v0
.end method

.method public static final synthetic c()Lg0/f$d;
    .locals 1

    sget-object v0, Lg0/b;->d:Lg0/f$d;

    return-object v0
.end method

.method public static final synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lg0/b;->h:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic e()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lg0/b;->i:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method
