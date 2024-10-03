.class public final Li3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li3/a$a;
    }
.end annotation


# static fields
.field public static final a:Li3/a;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Li3/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Object;

.field private static e:J

.field private static final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li3/a;

    invoke-direct {v0}, Li3/a;-><init>()V

    sput-object v0, Li3/a;->a:Li3/a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Li3/a;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li3/a;->d:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    sput-wide v0, Li3/a;->e:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Li3/a;->f:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Li3/a;->f:J

    return-wide v0
.end method

.method public static final synthetic b()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Li3/a;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Li3/a;->e:J

    return-wide v0
.end method

.method public static final synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Li3/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/ref/WeakReference;)V
    .locals 0

    sput-object p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic f(J)V
    .locals 0

    sput-wide p0, Li3/a;->e:J

    return-void
.end method

.method public static final g(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "watcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li3/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li3/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/ref/WeakReference;

    new-instance v1, Li3/a$a;

    invoke-direct {v1}, Li3/a$a;-><init>()V

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Li3/a;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final h(Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "watcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li3/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li3/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
