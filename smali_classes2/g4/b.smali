.class public final Lg4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/b$a;
    }
.end annotation


# static fields
.field public static final d:Lg4/b$a;


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/nothing/launcher/card/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg4/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lg4/b;->d:Lg4/b$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lg4/b;->a:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lg4/b;->b:Ljava/util/LinkedList;

    new-instance v0, Lcom/nothing/launcher/card/h;

    invoke-direct {v0, p1}, Lcom/nothing/launcher/card/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg4/b;->c:Lcom/nothing/launcher/card/h;

    return-void
.end method

.method private final b(Lcom/nothing/launcher/card/CardWidgetProviderInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/nothing/launcher/card/CardWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg4/b;->b:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg4/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lg4/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v5, p0, Lg4/b;->c:Lcom/nothing/launcher/card/h;

    iget-object v6, v4, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    const-string v7, "key.componentName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    const-string v8, "key.user"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/nothing/launcher/card/h;->a(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v5

    iget-object v6, p0, Lg4/b;->a:Landroid/util/ArrayMap;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lg4/b;->a:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lo5/d0;->n(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<com.android.launcher3.util.ComponentKey, com.nothing.launcher.card.CardWidgetProviderInfo>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 8

    const-string v0, "cursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgDataModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "appWidgetProvider"

    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v5, p1, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v3, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    if-eqz v3, :cond_1

    iget-object v5, p0, Lg4/b;->a:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lg4/b;->c:Lcom/nothing/launcher/card/h;

    iget-object v6, p1, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    const-string v7, "cursor.user"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Lcom/nothing/launcher/card/h;->a(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v6, p0, Lg4/b;->c:Lcom/nothing/launcher/card/h;

    invoke-virtual {v6}, Lcom/nothing/launcher/card/h;->d()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v5, p0, Lg4/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lg4/b;->a:Landroid/util/ArrayMap;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v5, p0, Lg4/b;->a:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    invoke-direct {p0, v5}, Lg4/b;->b(Lcom/nothing/launcher/card/CardWidgetProviderInfo;)Z

    move-result v6

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deleting card widget with null component, widgetId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    if-nez v6, :cond_3

    iget-object v6, p0, Lg4/b;->b:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deleting card widget that isn\'t installed anymore: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/nothing/launcher/card/s;

    invoke-direct {v4, v0, v3}, Lcom/nothing/launcher/card/s;-><init>(ILandroid/content/ComponentName;)V

    iget v3, p1, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v4, v3}, Lcom/nothing/launcher/card/s;->k(I)V

    invoke-virtual {p1, v4}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v3, p1, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/16 v5, 0x78

    if-lez v3, :cond_b

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-gtz v3, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object p0, p0, Lg4/b;->c:Lcom/nothing/launcher/card/h;

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/card/h;->c(I)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    iget v0, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->i0()I

    move-result v3

    if-lt v0, v3, :cond_5

    iget v0, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->j0()I

    move-result v3

    if-ge v0, v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card Widget "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " minSizes not meet: span="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " minSpan="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->i0()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->j0()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CardWidgetLoaderHelper"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "card Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    :goto_2
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {v4}, Lcom/nothing/launcher/card/s;->h()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/nothing/launcher/card/s;->i()I

    move-result v0

    iget v2, p1, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v0, v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    invoke-virtual {v4}, Lcom/nothing/launcher/card/s;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "restored"

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    :cond_9
    invoke-virtual {v4}, Lcom/nothing/launcher/card/s;->i()I

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "card Widget restoreStatus is not RESTORE_COMPLETED"

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v4, p2}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    :goto_3
    return-void

    :cond_b
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "card Widget has invalid size: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p2, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method
