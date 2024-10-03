.class public final enum Lt1/k$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lt1/k$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lt1/k$i;

.field public static final enum h:Lt1/k$i;

.field public static final enum i:Lt1/k$i;

.field public static final enum j:Lt1/k$i;

.field public static final enum k:Lt1/k$i;

.field public static final enum l:Lt1/k$i;

.field public static final enum m:Lt1/k$i;

.field public static final enum n:Lt1/k$i;

.field private static final synthetic o:[Lt1/k$i;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lt1/k$i;

    const-string v1, "IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lt1/k$i;->g:Lt1/k$i;

    new-instance v1, Lt1/k$i;

    const-string v3, "VISIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lt1/k$i;->h:Lt1/k$i;

    new-instance v3, Lt1/k$i;

    const-string v5, "MERGE_FROM_STREAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lt1/k$i;->i:Lt1/k$i;

    new-instance v5, Lt1/k$i;

    const-string v7, "MAKE_IMMUTABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lt1/k$i;->j:Lt1/k$i;

    new-instance v7, Lt1/k$i;

    const-string v9, "NEW_MUTABLE_INSTANCE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lt1/k$i;->k:Lt1/k$i;

    new-instance v9, Lt1/k$i;

    const-string v11, "NEW_BUILDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lt1/k$i;->l:Lt1/k$i;

    new-instance v11, Lt1/k$i;

    const-string v13, "GET_DEFAULT_INSTANCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lt1/k$i;->m:Lt1/k$i;

    new-instance v13, Lt1/k$i;

    const-string v15, "GET_PARSER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lt1/k$i;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lt1/k$i;->n:Lt1/k$i;

    const/16 v15, 0x8

    new-array v15, v15, [Lt1/k$i;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lt1/k$i;->o:[Lt1/k$i;

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

.method public static valueOf(Ljava/lang/String;)Lt1/k$i;
    .locals 1

    const-class v0, Lt1/k$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lt1/k$i;

    return-object p0
.end method

.method public static values()[Lt1/k$i;
    .locals 1

    sget-object v0, Lt1/k$i;->o:[Lt1/k$i;

    invoke-virtual {v0}, [Lt1/k$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt1/k$i;

    return-object v0
.end method
