.class abstract Lx3/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "refreshContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/a$d;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lx3/a$d;->b:Z

    return-void
.end method

.method private final b()V
    .locals 1

    iget-boolean v0, p0, Lx3/a$d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx3/a$d;->c:Z

    invoke-virtual {p0}, Lx3/a$d;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-direct {p0}, Lx3/a$d;->b()V

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lx3/a$d;->b:Z

    return p0
.end method

.method public final d()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lx3/a$d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lx3/a$d;->c:Z

    return p0
.end method

.method protected abstract f()V
.end method

.method public final g()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean v0, p0, Lx3/a$d;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lx3/a$d;->b()V

    :cond_0
    return-void
.end method
