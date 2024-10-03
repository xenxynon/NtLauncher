.class final Lg2/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/i$a$a;
    }
.end annotation


# static fields
.field public static final j:Lg2/i$a$a;


# instance fields
.field private final g:Landroid/os/Handler;

.field private h:I

.field private final i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lg2/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/i$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg2/i$a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg2/i$a;->j:Lg2/i$a$a;

    return-void
.end method

.method public constructor <init>(Lg2/i;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "bindServiceHandleClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg2/i$a;->g:Landroid/os/Handler;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lg2/i$a;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic b(Lg2/i$a;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg2/i$a;->a(J)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lg2/i$a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg2/i$a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg2/i$a;->h:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lg2/i$a;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 5

    iget v0, p0, Lg2/i$a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg2/i$a;->h:I

    const-string v1, "BindServiceHandler2"

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lg2/i$a;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg2/i;->v()Lg2/m;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg2/i$a;->g:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {v0}, Lg2/i;->p(Lg2/i;)V

    invoke-static {v0}, Lg2/i;->g(Lg2/i;)Z

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting service connected timeout, begin connect service again. Retry count = "

    goto :goto_0

    :cond_0
    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service connected, quit retry, retryCount = "

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lg2/i$a;->h:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Always connect system service fail, Retry count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lg2/i$a;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Check current bindClass."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
