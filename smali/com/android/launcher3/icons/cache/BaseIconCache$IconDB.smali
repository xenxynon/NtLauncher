.class public final Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;
.super Lcom/android/launcher3/util/SQLiteCacheHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/cache/BaseIconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconDB"
.end annotation


# static fields
.field public static final COLUMNS_HIGH_RES:[Ljava/lang/String;

.field public static final COLUMNS_LOW_RES:[Ljava/lang/String;

.field private static final INDEX_COLOR:I

.field private static final INDEX_FLAGS:I

.field private static final INDEX_ICON:I

.field private static final INDEX_MONO_FLAG:I

.field private static final INDEX_MONO_ICON:I

.field private static final INDEX_TITLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "componentName"

    const-string v1, "label"

    const-string v2, "icon_color"

    const-string v3, "flags"

    const-string v4, "mono_flag"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_LOW_RES:[Ljava/lang/String;

    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    const-class v6, [Ljava/lang/String;

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    sput-object v5, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->COLUMNS_HIGH_RES:[Ljava/lang/String;

    array-length v6, v0

    const-string v7, "icon"

    aput-object v7, v5, v6

    array-length v6, v0

    add-int/lit8 v6, v6, 0x1

    const-string v7, "mono_icon"

    aput-object v7, v5, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_TITLE:I

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_COLOR:I

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_FLAGS:I

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_MONO_FLAG:I

    array-length v0, v0

    sput v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_ICON:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_MONO_ICON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/high16 v0, 0x2a0000

    add-int/2addr p3, v0

    const-string v0, "icons"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/util/SQLiteCacheHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_COLOR:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_TITLE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_ICON:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_MONO_ICON:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_FLAGS:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;->INDEX_MONO_FLAG:I

    return v0
.end method


# virtual methods
.method protected onCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, mono_icon BLOB, icon_color INTEGER NOT NULL DEFAULT 0, flags INTEGER NOT NULL DEFAULT 0, mono_flag INTEGER NOT NULL DEFAULT 0, label TEXT, system_state TEXT, keywords TEXT, PRIMARY KEY (componentName, profileId) );"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
