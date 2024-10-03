.class public final enum Lcom/nothing/launcher/popup/NTPopupContainer$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/popup/NTPopupContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nothing/launcher/popup/NTPopupContainer$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

.field public static final enum h:Lcom/nothing/launcher/popup/NTPopupContainer$b;

.field public static final enum i:Lcom/nothing/launcher/popup/NTPopupContainer$b;

.field public static final enum j:Lcom/nothing/launcher/popup/NTPopupContainer$b;

.field private static final synthetic k:[Lcom/nothing/launcher/popup/NTPopupContainer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const-string v1, "FOR_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nothing/launcher/popup/NTPopupContainer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const-string v1, "FOR_APP_IN_CLOSED_BIG_FOLDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/nothing/launcher/popup/NTPopupContainer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->h:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const-string v1, "FOR_SMALL_FOLDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/nothing/launcher/popup/NTPopupContainer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->i:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    new-instance v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const-string v1, "FOR_BIG_FOLDER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/nothing/launcher/popup/NTPopupContainer$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->j:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    invoke-static {}, Lcom/nothing/launcher/popup/NTPopupContainer$b;->a()[Lcom/nothing/launcher/popup/NTPopupContainer$b;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->k:[Lcom/nothing/launcher/popup/NTPopupContainer$b;

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

.method private static final synthetic a()[Lcom/nothing/launcher/popup/NTPopupContainer$b;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nothing/launcher/popup/NTPopupContainer$b;

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->g:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->h:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->i:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/nothing/launcher/popup/NTPopupContainer$b;->j:Lcom/nothing/launcher/popup/NTPopupContainer$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nothing/launcher/popup/NTPopupContainer$b;
    .locals 1

    const-class v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/popup/NTPopupContainer$b;

    return-object p0
.end method

.method public static values()[Lcom/nothing/launcher/popup/NTPopupContainer$b;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/popup/NTPopupContainer$b;->k:[Lcom/nothing/launcher/popup/NTPopupContainer$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nothing/launcher/popup/NTPopupContainer$b;

    return-object v0
.end method
