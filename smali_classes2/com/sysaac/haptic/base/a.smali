.class public final enum Lcom/sysaac/haptic/base/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sysaac/haptic/base/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sysaac/haptic/base/a;

.field public static final enum b:Lcom/sysaac/haptic/base/a;

.field public static final enum c:Lcom/sysaac/haptic/base/a;

.field private static final synthetic e:[Lcom/sysaac/haptic/base/a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sysaac/haptic/base/a;

    const-string v1, "SOFT_CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sysaac/haptic/base/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sysaac/haptic/base/a;->a:Lcom/sysaac/haptic/base/a;

    new-instance v1, Lcom/sysaac/haptic/base/a;

    const-string v3, "DOUBLE_CLICK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sysaac/haptic/base/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sysaac/haptic/base/a;->b:Lcom/sysaac/haptic/base/a;

    new-instance v3, Lcom/sysaac/haptic/base/a;

    const-string v5, "CLICK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sysaac/haptic/base/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sysaac/haptic/base/a;->c:Lcom/sysaac/haptic/base/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sysaac/haptic/base/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sysaac/haptic/base/a;->e:[Lcom/sysaac/haptic/base/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sysaac/haptic/base/a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sysaac/haptic/base/a;
    .locals 1

    const-class v0, Lcom/sysaac/haptic/base/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sysaac/haptic/base/a;

    return-object p0
.end method

.method public static values()[Lcom/sysaac/haptic/base/a;
    .locals 1

    sget-object v0, Lcom/sysaac/haptic/base/a;->e:[Lcom/sysaac/haptic/base/a;

    invoke-virtual {v0}, [Lcom/sysaac/haptic/base/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sysaac/haptic/base/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/sysaac/haptic/base/a;->d:I

    return p0
.end method
