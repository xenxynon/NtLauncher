.class public final enum Lf6/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf6/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lf6/k;

.field public static final enum h:Lf6/k;

.field public static final enum i:Lf6/k;

.field public static final enum j:Lf6/k;

.field private static final synthetic k:[Lf6/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf6/k;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf6/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf6/k;->g:Lf6/k;

    new-instance v0, Lf6/k;

    const-string v1, "PROTECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf6/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf6/k;->h:Lf6/k;

    new-instance v0, Lf6/k;

    const-string v1, "INTERNAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf6/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf6/k;->i:Lf6/k;

    new-instance v0, Lf6/k;

    const-string v1, "PRIVATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lf6/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf6/k;->j:Lf6/k;

    invoke-static {}, Lf6/k;->a()[Lf6/k;

    move-result-object v0

    sput-object v0, Lf6/k;->k:[Lf6/k;

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

.method private static final synthetic a()[Lf6/k;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lf6/k;

    sget-object v1, Lf6/k;->g:Lf6/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lf6/k;->h:Lf6/k;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lf6/k;->i:Lf6/k;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lf6/k;->j:Lf6/k;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf6/k;
    .locals 1

    const-class v0, Lf6/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf6/k;

    return-object p0
.end method

.method public static values()[Lf6/k;
    .locals 1

    sget-object v0, Lf6/k;->k:[Lf6/k;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf6/k;

    return-object v0
.end method
