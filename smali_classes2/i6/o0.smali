.class public final enum Li6/o0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/o0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li6/o0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Li6/o0;

.field public static final enum h:Li6/o0;

.field public static final enum i:Li6/o0;

.field public static final enum j:Li6/o0;

.field private static final synthetic k:[Li6/o0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Li6/o0;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li6/o0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li6/o0;->g:Li6/o0;

    new-instance v0, Li6/o0;

    const-string v1, "LAZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Li6/o0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li6/o0;->h:Li6/o0;

    new-instance v0, Li6/o0;

    const-string v1, "ATOMIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Li6/o0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li6/o0;->i:Li6/o0;

    new-instance v0, Li6/o0;

    const-string v1, "UNDISPATCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Li6/o0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li6/o0;->j:Li6/o0;

    invoke-static {}, Li6/o0;->a()[Li6/o0;

    move-result-object v0

    sput-object v0, Li6/o0;->k:[Li6/o0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Li6/o0;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Li6/o0;

    sget-object v1, Li6/o0;->g:Li6/o0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Li6/o0;->h:Li6/o0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Li6/o0;->i:Li6/o0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Li6/o0;->j:Li6/o0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Li6/o0;
    .locals 1

    const-class v0, Li6/o0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li6/o0;

    return-object p0
.end method

.method public static values()[Li6/o0;
    .locals 1

    sget-object v0, Li6/o0;->k:[Li6/o0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li6/o0;

    return-object v0
.end method


# virtual methods
.method public final b(Ly5/p;Ljava/lang/Object;Lq5/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ly5/p<",
            "-TR;-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lq5/d<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Li6/o0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ln5/j;

    invoke-direct {p0}, Ln5/j;-><init>()V

    throw p0

    :cond_1
    invoke-static {p1, p2, p3}, Lm6/b;->a(Ly5/p;Ljava/lang/Object;Lq5/d;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Lq5/f;->a(Ly5/p;Ljava/lang/Object;Lq5/d;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lm6/a;->d(Ly5/p;Ljava/lang/Object;Lq5/d;Ly5/l;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Li6/o0;->h:Li6/o0;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
