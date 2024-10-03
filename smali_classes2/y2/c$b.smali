.class final Ly2/c$b;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Ly2/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly2/c$b;

    invoke-direct {v0}, Ly2/c$b;-><init>()V

    sput-object v0, Ly2/c$b;->g:Ly2/c$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ExecutorService;
    .locals 3

    sget-object p0, Ly2/c;->a:Ly2/c;

    new-instance v0, Ly2/c$c$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Ly2/c$c$a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/i;)V

    invoke-static {p0, v0}, Ly2/c;->b(Ly2/c;Ly2/c$c;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly2/c$b;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
