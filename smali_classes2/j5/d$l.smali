.class public final enum Lj5/d$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj5/d$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lj5/d$l;

.field public static final enum h:Lj5/d$l;

.field private static final synthetic i:[Lj5/d$l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj5/d$l;

    const-string v1, "SOFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj5/d$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj5/d$l;->g:Lj5/d$l;

    new-instance v1, Lj5/d$l;

    const-string v3, "WEAK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj5/d$l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj5/d$l;->h:Lj5/d$l;

    const/4 v3, 0x2

    new-array v3, v3, [Lj5/d$l;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lj5/d$l;->i:[Lj5/d$l;

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

.method public static valueOf(Ljava/lang/String;)Lj5/d$l;
    .locals 1

    const-class v0, Lj5/d$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj5/d$l;

    return-object p0
.end method

.method public static values()[Lj5/d$l;
    .locals 1

    sget-object v0, Lj5/d$l;->i:[Lj5/d$l;

    invoke-virtual {v0}, [Lj5/d$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj5/d$l;

    return-object v0
.end method
