.class public final enum Ln5/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln5/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Ln5/i;

.field public static final enum h:Ln5/i;

.field public static final enum i:Ln5/i;

.field private static final synthetic j:[Ln5/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ln5/i;

    const-string v1, "SYNCHRONIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln5/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln5/i;->g:Ln5/i;

    new-instance v0, Ln5/i;

    const-string v1, "PUBLICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln5/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln5/i;->h:Ln5/i;

    new-instance v0, Ln5/i;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln5/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln5/i;->i:Ln5/i;

    invoke-static {}, Ln5/i;->a()[Ln5/i;

    move-result-object v0

    sput-object v0, Ln5/i;->j:[Ln5/i;

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

.method private static final synthetic a()[Ln5/i;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ln5/i;

    sget-object v1, Ln5/i;->g:Ln5/i;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ln5/i;->h:Ln5/i;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ln5/i;->i:Ln5/i;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln5/i;
    .locals 1

    const-class v0, Ln5/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln5/i;

    return-object p0
.end method

.method public static values()[Ln5/i;
    .locals 1

    sget-object v0, Ln5/i;->j:[Ln5/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln5/i;

    return-object v0
.end method
