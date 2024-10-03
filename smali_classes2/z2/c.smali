.class public abstract Lz2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/c$a;,
        Lz2/c$b;,
        Lz2/c$c;
    }
.end annotation


# static fields
.field public static final f:Lz2/c$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/c$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lz2/c;->f:Lz2/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lz2/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lz2/c;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lz2/c;->d:Z

    iput-boolean p5, p0, Lz2/c;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/i;)V
    .locals 7

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x1

    :cond_0
    move v5, p5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lz2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/i;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lz2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lz2/c;->d:Z

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lz2/c;->e:Z

    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/c;->a:Ljava/lang/String;

    return-object p0
.end method
