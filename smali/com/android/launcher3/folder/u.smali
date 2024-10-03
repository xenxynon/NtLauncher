.class public final synthetic Lcom/android/launcher3/folder/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/folder/u;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/u;

    invoke-direct {v0}, Lcom/android/launcher3/folder/u;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/u;->a:Lcom/android/launcher3/folder/u;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderNameProvider;->c(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
