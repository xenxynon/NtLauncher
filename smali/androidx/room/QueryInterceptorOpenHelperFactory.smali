.class final Landroidx/room/QueryInterceptorOpenHelperFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# instance fields
.field private final mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field private final mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

.field private final mQueryCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/QueryInterceptorOpenHelperFactory;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iput-object p2, p0, Landroidx/room/QueryInterceptorOpenHelperFactory;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iput-object p3, p0, Landroidx/room/QueryInterceptorOpenHelperFactory;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/room/QueryInterceptorOpenHelper;

    iget-object v1, p0, Landroidx/room/QueryInterceptorOpenHelperFactory;->mDelegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    iget-object v1, p0, Landroidx/room/QueryInterceptorOpenHelperFactory;->mQueryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    iget-object p0, p0, Landroidx/room/QueryInterceptorOpenHelperFactory;->mQueryCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, p0}, Landroidx/room/QueryInterceptorOpenHelper;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/RoomDatabase$QueryCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
