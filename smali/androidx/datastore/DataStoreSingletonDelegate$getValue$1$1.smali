.class final Landroidx/datastore/DataStoreSingletonDelegate$getValue$1$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/DataStoreSingletonDelegate;->getValue(Landroid/content/Context;Lf6/f;)Landroidx/datastore/core/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $applicationContext:Landroid/content/Context;

.field final synthetic this$0:Landroidx/datastore/DataStoreSingletonDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/DataStoreSingletonDelegate<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/datastore/DataStoreSingletonDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/datastore/DataStoreSingletonDelegate<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/DataStoreSingletonDelegate$getValue$1$1;->$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/datastore/DataStoreSingletonDelegate$getValue$1$1;->this$0:Landroidx/datastore/DataStoreSingletonDelegate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Landroidx/datastore/DataStoreSingletonDelegate$getValue$1$1;->$applicationContext:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/datastore/DataStoreSingletonDelegate$getValue$1$1;->this$0:Landroidx/datastore/DataStoreSingletonDelegate;

    invoke-static {p0}, Landroidx/datastore/DataStoreSingletonDelegate;->access$getFileName$p(Landroidx/datastore/DataStoreSingletonDelegate;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/datastore/DataStoreSingletonDelegate$getValue$1$1;->invoke()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
