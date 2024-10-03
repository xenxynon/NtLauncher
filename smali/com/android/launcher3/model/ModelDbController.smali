.class public Lcom/android/launcher3/model/ModelDbController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelDbController;->lambda$createDatabaseHelper$1(Ljava/lang/String;)V

    return-void
.end method

.method private static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic b(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/ModelDbController;->lambda$getAutoInstallsLayoutFromIS$2(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/model/ModelDbController;->lambda$createDatabaseHelper$0()V

    return-void
.end method

.method private clearFlagEmptyDbCreated()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->removeSync([Lcom/android/launcher3/Item;)V

    return-void
.end method

.method private createWorkspaceLoaderFromAppRestriction(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "launcher3.layout.provider.blob"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    const-string v3, "LauncherProvider"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/blob/BlobStoreManager;

    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v5, "launcher-layout"

    const-wide/16 v6, 0x0

    const-string v8, "ignore"

    invoke-static {v1, v5, v6, v7, v8}, Landroid/app/blob/BlobHandle;->createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/blob/BlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/android/launcher3/model/ModelDbController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ModelDbController$1;-><init>(Lcom/android/launcher3/model/ModelDbController;)V

    invoke-direct {p0, v2, p1, v0}, Lcom/android/launcher3/model/ModelDbController;->getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Error getting layout from blob handle"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :cond_0
    const-string v1, "launcher3.layout.provider"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v4

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No provider found for authority "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/android/launcher3/model/ModelDbController;->getLayoutUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    :try_start_5
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading layout from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/AutoInstallsLayout$SourceResources;->wrap(Landroid/content/res/Resources;)Lcom/android/launcher3/AutoInstallsLayout$SourceResources;

    move-result-object v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/launcher3/model/ModelDbController;->getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    return-object p0

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error getting layout stream from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method private getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 9

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v0, Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    new-instance v7, Ln/f1;

    invoke-direct {v7, p1}, Ln/f1;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v8, "workspace"

    move-object v2, v0

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;Ljava/util/function/Supplier;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    :goto_0
    move v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new NTDefaultLayoutParser layoutId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherProvider"

    invoke-static {v1, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lz2/d;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lz2/d;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/launcher3/ConstantItem<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of p0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    const/4 v0, 0x0

    const-string v1, "EMPTY_DATABASE_CREATED"

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/LauncherPrefs;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v1, p1}, Lcom/android/launcher3/model/ModelDbController;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/LauncherPrefs;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method

.method public static getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "launcher.db"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLayoutUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object p1

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "launcher_layout"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "version"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gridWidth"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gridHeight"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hotseatSize"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createDatabaseHelper$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createDatabaseHelper$1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ln5/k;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Item;->to(Ljava/lang/Object;)Ln5/k;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->putSync([Ln5/k;)V

    return-void
.end method

.method private static synthetic lambda$getAutoInstallsLayoutFromIS$2(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    return-object p0
.end method

.method private onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/DatabaseHelper;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public bulkInsert(Ljava/lang/String;[Landroid/content/ContentValues;)I
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/android/launcher3/model/ModelDbController;->addModifiedTime(Landroid/content/ContentValues;)V

    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    aget-object v6, p2, v4

    invoke-virtual {v5, v0, p1, v6}, Lcom/android/launcher3/model/DatabaseHelper;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    return v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V

    array-length p0, p2

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public clearEmptyDbFlag()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->clearFlagEmptyDbCreated()V

    return-void
.end method

.method protected createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(ZLjava/lang/String;)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object p0

    return-object p0
.end method

.method protected createDatabaseHelper(ZLjava/lang/String;)Lcom/android/launcher3/model/DatabaseHelper;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Ln/e1;->g:Ln/e1;

    goto :goto_1

    :cond_2
    new-instance p1, Ln/d1;

    invoke-direct {p1, p0, p2}, Ln/d1;-><init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/android/launcher3/model/DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    new-instance v2, Ln/g1;

    invoke-direct {v2, p0}, Ln/g1;-><init>(Lcom/android/launcher3/model/ModelDbController;)V

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/android/launcher3/model/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/ToLongFunction;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "favorites"

    invoke-static {p1, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "LauncherProvider"

    const-string p2, "Tables are missing after onCreate has been called. Trying to recreate"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-static {p1, v1, v2, p0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "hotseat_restore_backup"

    invoke-static {p0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->initIds()V

    return-object v0
.end method

.method protected declared-synchronized createDbIfNotExists()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createEmptyDB()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "favorites"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return p1
.end method

.method public deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_0
    new-instance v7, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v7, p0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    const/4 v0, 0x0

    const-string v2, "favorites"

    const-string v3, "_id"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "favorites"

    const-string v2, "_id"

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v7}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v7}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherProvider"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    return-object p0
.end method

.method public generateNewItemId()I
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->generateNewItemId()I

    move-result p0

    return p0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getNewScreenId()I
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getNewScreenId()I

    move-result p0

    return p0
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 1

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p2}, Lcom/android/launcher3/model/ModelDbController;->addModifiedTime(Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/launcher3/model/DatabaseHelper;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->onAddOrDeleteOp(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return p1
.end method

.method public declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LauncherProvider"

    const-string v1, "loading default workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lz2/b;->b(Landroid/content/Context;)Lz2/c;

    move-result-object v0

    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setup default style is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/model/DatabaseHelper;->newLauncherWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->createWorkspaceLoaderFromAppRestriction(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-static {v2, v1, v3, v0}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Lz2/c;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/util/Partner;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "partner_default_layout"

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/Partner;->getXmlResId(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v8, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v2, v8

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$LayoutParserCallback;Landroid/content/res/Resources;I)V

    move-object v2, v8

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/model/DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v2

    if-gtz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->clearFlagEmptyDbCreated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newTransaction()Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    const-string p3, "db_name"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public refreshHotseatRestoreTable()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hotseat_restore_backup"

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    return-void
.end method

.method public removeGhostWidgets()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/DatabaseHelper;->removeGhostWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    invoke-static {p2}, Lcom/android/launcher3/model/ModelDbController;->addModifiedTime(Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
