.class public final synthetic Landroidx/room/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/r0;->g:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Landroidx/room/r0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/room/r0;->g:Landroidx/room/QueryInterceptorDatabase;

    iget-object p0, p0, Landroidx/room/r0;->h:Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/room/QueryInterceptorDatabase;->n(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V

    return-void
.end method