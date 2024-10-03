.class public final enum Lj5/d$m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj5/d$m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lj5/d$m;

.field public static final enum h:Lj5/d$m;

.field private static final synthetic i:[Lj5/d$m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj5/d$m;

    const-string v1, "WHEN_NECESSARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj5/d$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj5/d$m;->g:Lj5/d$m;

    new-instance v1, Lj5/d$m;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj5/d$m;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj5/d$m;->h:Lj5/d$m;

    const/4 v3, 0x2

    new-array v3, v3, [Lj5/d$m;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lj5/d$m;->i:[Lj5/d$m;

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

.method public static valueOf(Ljava/lang/String;)Lj5/d$m;
    .locals 1

    const-class v0, Lj5/d$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj5/d$m;

    return-object p0
.end method

.method public static values()[Lj5/d$m;
    .locals 1

    sget-object v0, Lj5/d$m;->i:[Lj5/d$m;

    invoke-virtual {v0}, [Lj5/d$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj5/d$m;

    return-object v0
.end method
