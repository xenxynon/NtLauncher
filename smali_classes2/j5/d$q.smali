.class final enum Lj5/d$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj5/d$q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lj5/d$q;

.field public static final enum h:Lj5/d$q;

.field public static final enum i:Lj5/d$q;

.field public static final enum j:Lj5/d$q;

.field private static final synthetic k:[Lj5/d$q;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lj5/d$q;

    const-string v1, "RESTRUCTURE_BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj5/d$q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj5/d$q;->g:Lj5/d$q;

    new-instance v1, Lj5/d$q;

    const-string v3, "RESTRUCTURE_AFTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj5/d$q;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj5/d$q;->h:Lj5/d$q;

    new-instance v3, Lj5/d$q;

    const-string v5, "SKIP_IF_EMPTY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj5/d$q;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj5/d$q;->i:Lj5/d$q;

    new-instance v5, Lj5/d$q;

    const-string v7, "RESIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj5/d$q;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj5/d$q;->j:Lj5/d$q;

    const/4 v7, 0x4

    new-array v7, v7, [Lj5/d$q;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lj5/d$q;->k:[Lj5/d$q;

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

.method public static valueOf(Ljava/lang/String;)Lj5/d$q;
    .locals 1

    const-class v0, Lj5/d$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj5/d$q;

    return-object p0
.end method

.method public static values()[Lj5/d$q;
    .locals 1

    sget-object v0, Lj5/d$q;->k:[Lj5/d$q;

    invoke-virtual {v0}, [Lj5/d$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj5/d$q;

    return-object v0
.end method
