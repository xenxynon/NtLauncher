.class public final enum Ls1/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Ls1/b;

.field public static final enum h:Ls1/b;

.field public static final enum i:Ls1/b;

.field public static final enum j:Ls1/b;

.field public static final enum k:Ls1/b;

.field public static final enum l:Ls1/b;

.field public static final enum m:Ls1/b;

.field public static final enum n:Ls1/b;

.field public static final enum o:Ls1/b;

.field public static final enum p:Ls1/b;

.field private static final synthetic q:[Ls1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ls1/b;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ls1/b;->g:Ls1/b;

    new-instance v1, Ls1/b;

    const-string v3, "END_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ls1/b;->h:Ls1/b;

    new-instance v3, Ls1/b;

    const-string v5, "BEGIN_OBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ls1/b;->i:Ls1/b;

    new-instance v5, Ls1/b;

    const-string v7, "END_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ls1/b;->j:Ls1/b;

    new-instance v7, Ls1/b;

    const-string v9, "NAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ls1/b;->k:Ls1/b;

    new-instance v9, Ls1/b;

    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ls1/b;->l:Ls1/b;

    new-instance v11, Ls1/b;

    const-string v13, "NUMBER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ls1/b;->m:Ls1/b;

    new-instance v13, Ls1/b;

    const-string v15, "BOOLEAN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ls1/b;->n:Ls1/b;

    new-instance v15, Ls1/b;

    const-string v14, "NULL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ls1/b;->o:Ls1/b;

    new-instance v14, Ls1/b;

    const-string v12, "END_DOCUMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ls1/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ls1/b;->p:Ls1/b;

    const/16 v12, 0xa

    new-array v12, v12, [Ls1/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Ls1/b;->q:[Ls1/b;

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

.method public static valueOf(Ljava/lang/String;)Ls1/b;
    .locals 1

    const-class v0, Ls1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls1/b;

    return-object p0
.end method

.method public static values()[Ls1/b;
    .locals 1

    sget-object v0, Ls1/b;->q:[Ls1/b;

    invoke-virtual {v0}, [Ls1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls1/b;

    return-object v0
.end method
