.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b$b;
    }
.end annotation


# static fields
.field public static final p:Lo3/b$b;

.field private static final q:Ln5/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln5/e<",
            "Lo3/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final g:Landroid/content/Context;

.field private final synthetic h:Li6/m0;

.field private final i:Ls3/b;

.field private final j:Lx3/a;

.field private final k:Lt3/b;

.field private final l:Lkotlinx/coroutines/flow/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/y<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ln5/e;

.field private final n:Ln5/e;

.field private o:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo3/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo3/b$b;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lo3/b;->p:Lo3/b$b;

    sget-object v0, Lo3/b$a;->g:Lo3/b$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lo3/b;->q:Ln5/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/b;->g:Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Li6/r2;->b(Li6/v1;ILjava/lang/Object;)Li6/z;

    move-result-object v0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v1

    invoke-interface {v0, v1}, Lq5/g;->plus(Lq5/g;)Lq5/g;

    move-result-object v0

    invoke-static {v0}, Li6/n0;->a(Lq5/g;)Li6/m0;

    move-result-object v0

    iput-object v0, p0, Lo3/b;->h:Li6/m0;

    new-instance v0, Ls3/b;

    invoke-direct {v0}, Ls3/b;-><init>()V

    iput-object v0, p0, Lo3/b;->i:Ls3/b;

    new-instance v1, Lx3/a;

    invoke-direct {v1, p1, p0}, Lx3/a;-><init>(Landroid/content/Context;Li6/m0;)V

    iput-object v1, p0, Lo3/b;->j:Lx3/a;

    new-instance v1, Lt3/b;

    invoke-direct {v1, p1}, Lt3/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lo3/b;->k:Lt3/b;

    invoke-virtual {v0}, Ls3/b;->b()Lkotlinx/coroutines/flow/y;

    move-result-object p1

    iput-object p1, p0, Lo3/b;->l:Lkotlinx/coroutines/flow/y;

    new-instance p1, Lo3/b$e;

    invoke-direct {p1, p0}, Lo3/b$e;-><init>(Lo3/b;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lo3/b;->m:Ln5/e;

    new-instance p1, Lo3/b$c;

    invoke-direct {p1, p0}, Lo3/b$c;-><init>(Lo3/b;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lo3/b;->n:Ln5/e;

    return-void
.end method

.method private static final A(Ln5/e;)Landroid/content/pm/Signature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln5/e<",
            "+",
            "Landroid/content/pm/Signature;",
            ">;)",
            "Landroid/content/pm/Signature;"
        }
    .end annotation

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/Signature;

    return-object p0
.end method

.method private final M(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lo3/b;->i:Ls3/b;

    invoke-virtual {p0, p1}, Ls3/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a()Ln5/e;
    .locals 1

    sget-object v0, Lo3/b;->q:Ln5/e;

    return-object v0
.end method

.method public static final synthetic b(Lo3/b;Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 0

    invoke-direct {p0, p1}, Lo3/b;->n(Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lo3/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo3/b;->M(Ljava/lang/String;)V

    return-void
.end method

.method private final d(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iget-object p0, p0, Lo3/b;->i:Ls3/b;

    invoke-virtual {p0, p1, p2}, Ls3/b;->a(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method private final k()Landroid/content/pm/Signature;
    .locals 0

    iget-object p0, p0, Lo3/b;->n:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/Signature;

    return-object p0
.end method

.method private final n(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lo3/b;->o()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v1, 0x8000000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lo5/c;->o([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private final o()Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lo3/b;->m:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManager;

    return-object p0
.end method


# virtual methods
.method public final B(Z)V
    .locals 1

    iget-object v0, p0, Lo3/b;->j:Lx3/a;

    iget-object p0, p0, Lo3/b;->g:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lx3/a;->q(Landroid/content/Context;Z)V

    return-void
.end method

.method public final C()Z
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->c()Z

    move-result p0

    return p0
.end method

.method public final D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final E(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo3/b;->o:Ljava/util/function/Function;

    return-void
.end method

.method public final F(Ls3/d;)V
    .locals 1

    const-string v0, "onSelectListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1}, Lx3/a;->k(Ls3/d;)V

    return-void
.end method

.method public final G(Ls3/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1}, Lx3/a;->m(Ls3/f;)V

    return-void
.end method

.method public final H(Ls3/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1}, Lx3/a;->l(Ls3/e;)V

    return-void
.end method

.method public final I(Ls3/d;)V
    .locals 1

    const-string v0, "onSelectListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1}, Lx3/a;->n(Ls3/d;)V

    return-void
.end method

.method public final J(Ls3/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1}, Lx3/a;->p(Ls3/f;)V

    return-void
.end method

.method public final K(Ls3/e;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1}, Lx3/a;->o(Ls3/e;)V

    return-void
.end method

.method public final L(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "context.packageManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/a;->b(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    array-length v3, p2

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v5, p2, v2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    check-cast v7, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_2

    invoke-direct {p0, p1, v7}, Lo3/b;->d(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    :cond_2
    if-nez v4, :cond_3

    const-string v4, "com.nothing.icon"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    :cond_5
    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lo3/b$f;

    invoke-direct {v6, p0, v1}, Lo3/b$f;-><init>(Lo3/b;Lq5/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    :cond_6
    return-void
.end method

.method public final N(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lo3/b$g;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p0, p1, v0}, Lo3/b$g;-><init>(Ljava/util/HashSet;Lo3/b;Landroid/content/Context;Lq5/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public final O(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "callerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0, p1, p2, p3}, Lx3/a;->s(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->a()V

    return-void
.end method

.method public final f()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo3/b;->g:Landroid/content/Context;

    return-object p0
.end method

.method public final g()Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo3/b;->o:Ljava/util/function/Function;

    return-object p0
.end method

.method public getCoroutineContext()Lq5/g;
    .locals 0

    iget-object p0, p0, Lo3/b;->h:Li6/m0;

    invoke-interface {p0}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public final h(ZLandroid/content/pm/LauncherActivityInfo;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "activityInfo"

    move-object/from16 v9, p2

    invoke-static {v9, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "iconFactory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "iconProvider"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/icons/BaseIconFactory;->getIconBitmapSize()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    new-instance v3, Lv3/d;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x12d

    const/4 v15, 0x0

    move-object v4, v3

    move/from16 v6, p1

    invoke-direct/range {v4 .. v15}, Lv3/d;-><init>(ZZZLjava/lang/String;Landroid/content/pm/LauncherActivityInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;ILjava/lang/Object;ILkotlin/jvm/internal/i;)V

    sget-object v4, Lv3/b;->d:Lv3/b$a;

    iget-object v5, v0, Lo3/b;->g:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lv3/b$a;->a(ILandroid/content/Context;)Lv3/b;

    move-result-object v4

    iget-object v0, v0, Lo3/b;->k:Lt3/b;

    invoke-virtual {v0, v3, v4, v1, v2}, Lt3/b;->d(Lv3/d;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv3/b;->d:Lv3/b$a;

    iget-object v1, p0, Lo3/b;->g:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lv3/b$a;->a(ILandroid/content/Context;)Lv3/b;

    move-result-object v0

    iget-object p0, p0, Lo3/b;->k:Lt3/b;

    invoke-virtual {p0, p1, v0, p2, p3}, Lt3/b;->e(Ljava/lang/String;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final j()Lkotlinx/coroutines/flow/y;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/y<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lv3/a;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lo3/b;->l:Lkotlinx/coroutines/flow/y;

    return-object p0
.end method

.method public final l(Landroid/content/Context;)Lv3/a;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo3/b;->i:Ls3/b;

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ls3/b;->c(Landroid/content/Context;Ljava/lang/String;)Lv3/a;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/String;Landroid/os/UserHandle;ZLcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;Ljava/util/function/Supplier;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Z",
            "Lcom/android/launcher3/icons/BaseIconFactory;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/icons/BitmapInfo;",
            ">;)",
            "Lcom/android/launcher3/icons/BitmapInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "appName"

    move-object/from16 v8, p1

    invoke-static {v8, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "userHandle"

    move-object/from16 v11, p2

    invoke-static {v11, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "iconFactory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fallbackBitmapInfo"

    move-object/from16 v15, p6

    invoke-static {v15, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v3, Lv3/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/icons/BaseIconFactory;->getIconBitmapSize()I

    move-result v12

    const/4 v13, 0x0

    const/16 v14, 0x133

    const/16 v16, 0x0

    move-object v4, v3

    move/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v11, p2

    move-object/from16 v15, v16

    invoke-direct/range {v4 .. v15}, Lv3/d;-><init>(ZZZLjava/lang/String;Landroid/content/pm/LauncherActivityInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;ILjava/lang/Object;ILkotlin/jvm/internal/i;)V

    sget-object v4, Lv3/b;->d:Lv3/b$a;

    const/4 v5, 0x4

    iget-object v6, v0, Lo3/b;->g:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lv3/b$a;->a(ILandroid/content/Context;)Lv3/b;

    move-result-object v4

    iget-object v0, v0, Lo3/b;->k:Lt3/b;

    invoke-virtual {v0, v3, v4, v1, v2}, Lt3/b;->d(Lv3/d;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/icons/BitmapInfo;

    :cond_1
    return-object v0
.end method

.method public final p(Lv3/d;Lcom/android/launcher3/icons/cache/BaseIconCache;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 9

    const-string v0, "originalRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv3/b;->d:Lv3/b$a;

    iget-object v1, p0, Lo3/b;->g:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lv3/b$a;->a(ILandroid/content/Context;)Lv3/b;

    move-result-object v6

    iget-object v3, p0, Lo3/b;->k:Lt3/b;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lt3/b;->c(Lv3/d;Lcom/android/launcher3/icons/cache/BaseIconCache;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public final q(Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "iconFactory"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "iconProvider"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lv3/d;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/icons/BaseIconFactory;->getIconBitmapSize()I

    move-result v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x11f

    const/4 v15, 0x0

    move-object v4, v3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v15}, Lv3/d;-><init>(ZZZLjava/lang/String;Landroid/content/pm/LauncherActivityInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;ILjava/lang/Object;ILkotlin/jvm/internal/i;)V

    sget-object v4, Lv3/b;->d:Lv3/b$a;

    iget-object v5, v0, Lo3/b;->g:Landroid/content/Context;

    invoke-virtual {v4, v6, v5}, Lv3/b$a;->a(ILandroid/content/Context;)Lv3/b;

    move-result-object v4

    iget-object v0, v0, Lo3/b;->k:Lt3/b;

    invoke-virtual {v0, v3, v4, v1, v2}, Lt3/b;->d(Lv3/d;Lv3/b;Lcom/android/launcher3/icons/BaseIconFactory;Lcom/android/launcher3/icons/IconProvider;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    return-object v0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->b()Z

    move-result p0

    return p0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {v0}, Lx3/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lo3/b;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo3/b;->g:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lo3/b;->l(Landroid/content/Context;)Lv3/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lv3/a;->l(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Z
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->e()Z

    move-result p0

    return p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->f()Z

    move-result p0

    return p0
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->g()Z

    move-result p0

    return p0
.end method

.method public final x()Z
    .locals 0

    iget-object p0, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {p0}, Lx3/a;->h()Z

    move-result p0

    return p0
.end method

.method public final y(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->i:Ls3/b;

    invoke-virtual {p0, p1}, Ls3/b;->d(Landroid/content/Context;)V

    return-void
.end method

.method public final z(Ljava/lang/Boolean;Z)Z
    .locals 7

    new-instance v0, Lo3/b$d;

    invoke-direct {v0, p0, p1}, Lo3/b$d;-><init>(Lo3/b;Ljava/lang/Boolean;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo3/b;->A(Ln5/e;)Landroid/content/pm/Signature;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget-object v4, p0, Lo3/b;->j:Lx3/a;

    invoke-virtual {v4}, Lx3/a;->d()Z

    move-result v4

    const-string v5, "IconPackManager"

    if-eqz v3, :cond_2

    invoke-static {v0}, Lo3/b;->A(Ln5/e;)Landroid/content/pm/Signature;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lo3/b;->A(Ln5/e;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-direct {p0}, Lo3/b;->k()Landroid/content/pm/Signature;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v3, "NothingIcon was installed, but had an incorrect signature."

    invoke-static {v5, v3}, Ly3/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reloadNothingIconPackForceRenderEnable parameter nothingIconPackInstalled = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newValue = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", oldValue = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Ly3/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v4, v0, :cond_4

    iget-object p1, p0, Lo3/b;->j:Lx3/a;

    iget-object p0, p0, Lo3/b;->g:Landroid/content/Context;

    invoke-virtual {p1, p0, v0, p2}, Lx3/a;->r(Landroid/content/Context;ZZ)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method
