.class final Li6/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/g$b;
.implements Lq5/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq5/g$b;",
        "Lq5/g$c<",
        "Li6/x2;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Li6/x2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/x2;

    invoke-direct {v0}, Li6/x2;-><init>()V

    sput-object v0, Li6/x2;->g:Li6/x2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ly5/p<",
            "-TR;-",
            "Lq5/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lq5/g$b$a;->a(Lq5/g$b;Ljava/lang/Object;Ly5/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lq5/g$c;)Lq5/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lq5/g$b;",
            ">(",
            "Lq5/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/g$b$a;->b(Lq5/g$b;Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lq5/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq5/g$c<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public minusKey(Lq5/g$c;)Lq5/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/g$c<",
            "*>;)",
            "Lq5/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq5/g$b$a;->c(Lq5/g$b;Lq5/g$c;)Lq5/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Lq5/g;)Lq5/g;
    .locals 0

    invoke-static {p0, p1}, Lq5/g$b$a;->d(Lq5/g$b;Lq5/g;)Lq5/g;

    move-result-object p0

    return-object p0
.end method
