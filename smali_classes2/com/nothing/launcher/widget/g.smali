.class public final Lcom/nothing/launcher/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/widget/g$b;,
        Lcom/nothing/launcher/widget/g$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/nothing/launcher/widget/g$a;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/nothing/launcher/card/p;

.field private c:Lcom/nothing/launcher/card/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/nothing/launcher/widget/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/widget/g$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/widget/g;->d:Lcom/nothing/launcher/widget/g$a;

    const/4 v0, 0x4

    new-array v0, v0, [Ln5/k;

    const-string v1, "com.nothing.launcher/com.nothing.widget.collection.weather.WeatherWidgetProvider"

    const-string v2, "com.nothing.weather/com.nothing.weather.widget.provider.SquareWidgetCardProvider"

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.nothing.launcher/com.nothing.widget.collection.clock.DigitalClockWidgetProvider"

    const-string v2, "com.nothing.hearthstone/com.nothing.hearthstone.clock.provider.DigitalWidgetProvider"

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.nothing.launcher/com.nothing.widget.collection.clock.AnalogClockDateWeekWidgetProvider"

    const-string v2, "com.nothing.hearthstone/com.nothing.hearthstone.clock.provider.AnalogWidgetProvider"

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.nothing.launcher/com.nothing.widget.collection.clock.OneGlanceDateWidgetProvider"

    const-string v2, "com.nothing.hearthstone/com.nothing.hearthstone.quicklook.QLTransparentWidgetProvider"

    invoke-static {v1, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lo5/d0;->h([Ln5/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/widget/g;->e:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "spanX"

    const-string v3, "spanY"

    const-string v4, "appWidgetProvider"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nothing/launcher/widget/g;->f:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appWidgetProvider in (\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v2, "\",\""

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") AND itemType=4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nothing/launcher/widget/g;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/widget/g;->a:Landroid/content/Context;

    sget-object v0, Lcom/nothing/launcher/card/b;->a:Lcom/nothing/launcher/card/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/nothing/launcher/card/p;

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/nothing/launcher/card/b;->a(Landroid/content/Context;ILjava/lang/Class;)Lcom/nothing/cardhost/d;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.nothing.launcher.card.LauncherCardWidgetHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/card/p;

    invoke-virtual {v0}, Lcom/nothing/cardhost/d;->n()V

    iput-object v0, p0, Lcom/nothing/launcher/widget/g;->b:Lcom/nothing/launcher/card/p;

    new-instance v0, Lcom/nothing/launcher/card/h;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/card/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nothing/launcher/widget/g;->c:Lcom/nothing/launcher/card/h;

    return-void
.end method

.method private final b(Lcom/nothing/launcher/widget/g$b;)Lcom/nothing/launcher/widget/g$b;
    .locals 7

    sget-object v0, Lcom/nothing/launcher/widget/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nothing/launcher/widget/g$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nothing/launcher/widget/g;->c:Lcom/nothing/launcher/card/h;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string v3, "myUserHandle()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/nothing/launcher/card/h;->a(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/nothing/launcher/widget/g$b;->d()I

    move-result v0

    invoke-virtual {v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->k0()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->g0()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1}, Lcom/nothing/launcher/widget/g$b;->e()I

    move-result v0

    invoke-virtual {v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->l0()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->j0()I

    move-result v0

    if-ge v4, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found unsupported card config = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NTWidgetTransformer"

    invoke-static {p1, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/nothing/launcher/widget/g;->b:Lcom/nothing/launcher/card/p;

    invoke-virtual {v0}, Lcom/nothing/cardhost/d;->l()I

    move-result v6

    iget-object v0, p0, Lcom/nothing/launcher/widget/g;->b:Lcom/nothing/launcher/card/p;

    iget-object p0, p0, Lcom/nothing/launcher/widget/g;->a:Landroid/content/Context;

    invoke-static {p0, v3, v4}, Lu2/b;->d(Landroid/content/Context;II)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v6, v1, p0}, Lcom/nothing/cardhost/d;->m(ILcom/nothing/cardservice/CardWidgetMetaInfo;Landroid/os/Bundle;)Z

    new-instance p0, Lcom/nothing/launcher/widget/g$b;

    invoke-virtual {p1}, Lcom/nothing/launcher/widget/g$b;->c()I

    move-result v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/widget/g$b;-><init>(IIILjava/lang/String;I)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Miss cardProvider info for component = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Miss target card info for = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Miss transformed card info for provider = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nothing/launcher/widget/g$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/nothing/launcher/widget/g;->b:Lcom/nothing/launcher/card/p;

    invoke-virtual {p0}, Lcom/nothing/cardhost/d;->s()V

    const-string p0, "NTWidgetTransformer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearHost done, consumed time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final c(Lcom/android/launcher3/model/DatabaseHelper;)V
    .locals 22

    const-string v0, "appWidgetProvider"

    const-string v1, "NTWidgetTransformer"

    const-string v2, "helper"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "UPDATE favorites SET spanX=?,spanY=?,itemType=100,appWidgetId=?,appWidgetProvider=?,modified=?,restored=0 WHERE _id=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const-string v4, "DELETE FROM favorites WHERE _id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    new-instance v12, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v12, v3}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v4, "favorites"

    sget-object v5, Lcom/nothing/launcher/widget/g;->f:[Ljava/lang/String;

    sget-object v6, Lcom/nothing/launcher/widget/g;->g:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "spanX"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "spanY"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/nothing/launcher/widget/g$b;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    move-object v14, v9

    move-object/from16 v18, v8

    invoke-direct/range {v14 .. v21}, Lcom/nothing/launcher/widget/g$b;-><init>(IIILjava/lang/String;IILkotlin/jvm/internal/i;)V

    move-object/from16 v8, p0

    invoke-direct {v8, v9}, Lcom/nothing/launcher/widget/g;->b(Lcom/nothing/launcher/widget/g$b;)Lcom/nothing/launcher/widget/g$b;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/nothing/launcher/widget/g$b;->d()I

    move-result v13

    move/from16 v17, v4

    move/from16 v18, v5

    int-to-long v4, v13

    const/4 v13, 0x1

    invoke-virtual {v2, v13, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    invoke-virtual {v10}, Lcom/nothing/launcher/widget/g$b;->e()I

    move-result v5

    move v13, v6

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x3

    invoke-virtual {v10}, Lcom/nothing/launcher/widget/g$b;->a()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x4

    invoke-virtual {v10}, Lcom/nothing/launcher/widget/g$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x6

    invoke-virtual {v10}, Lcom/nothing/launcher/widget/g$b;->c()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Convert pre widget info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " successfully, count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Ln5/t;->a:Ln5/t;

    goto :goto_1

    :cond_0
    move/from16 v17, v4

    move/from16 v18, v5

    move v13, v6

    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    invoke-virtual {v9}, Lcom/nothing/launcher/widget/g$b;->c()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual {v11, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported widget config, delete item info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v6, v13

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_2
    sget-object v0, Ln5/t;->a:Ln5/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v3, v2}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v12}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-static {v3, v2}, Lv5/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform widget to card other error. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform widget to card unsupported error. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transform widget to card sql error. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    sget-object v0, Ln5/t;->a:Ln5/t;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v1, 0x0

    invoke-static {v12, v1}, Lw5/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v12, v1}, Lw5/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method
