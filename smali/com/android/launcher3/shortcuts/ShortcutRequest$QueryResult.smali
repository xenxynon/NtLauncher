.class public Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/shortcuts/ShortcutRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/content/pm/ShortcutInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT:Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;


# instance fields
.field private final mWasSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->DEFAULT:Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->mWasSuccess:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->mWasSuccess:Z

    return-void
.end method


# virtual methods
.method public wasSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->mWasSuccess:Z

    return p0
.end method
