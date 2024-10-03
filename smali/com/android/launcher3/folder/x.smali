.class public final synthetic Lcom/android/launcher3/folder/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/folder/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/folder/x;

    invoke-direct {v0}, Lcom/android/launcher3/folder/x;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/x;->a:Lcom/android/launcher3/folder/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderNameProvider;->d(Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0
.end method
