%%%=====================================================================================================================
%%% Copyright (c) 2009, Bruno Rijsman
%%%
%%% Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby 
%%% granted, provided that the above copyright notice and this permission notice appear in all copies.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL 
%%% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, 
%%% INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN
%%% AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR 
%%% PERFORMANCE OF THIS SOFTWARE.
%%%=====================================================================================================================

%% @author Bruno Rijsman
%% @copyright 2009 Bruno Rijsman

%% @doc BGP message types.
%%
-define(BGP_MESSAGE_TYPE_OPEN, 1).
-define(BGP_MESSAGE_TYPE_UPDATE, 2).
-define(BGP_MESSAGE_TYPE_NOTIFICATION, 3).
-define(BGP_MESSAGE_TYPE_KEEP_ALIVE, 4).
-define(BGP_MESSAGE_TYPE_ROUTE_REFRESH, 5).

%% @doc BGP open optional parameter types.
%%
-define(BGP_OPEN_PARAMETER_DEPRECATED_AUTHENTICATION, 1).
-define(BGP_OPEN_PARAMETER_CAPABILITIES, 2).

%% @doc BGP path attributes.
%%
-define(BGP_PATH_ATTRIBUTE_ORIGIN, 1).
-define(BGP_PATH_ATTRIBUTE_AS_PATH, 2).
-define(BGP_PATH_ATTRIBUTE_NEXT_HOP, 3).
-define(BGP_PATH_ATTRIBUTE_MULTI_EXIT_DISC, 4).
-define(BGP_PATH_ATTRIBUTE_LOCAL_PREF, 5).
-define(BGP_PATH_ATTRIBUTE_ATOMIC_AGGREGATE, 6).
-define(BGP_PATH_ATTRIBUTE_AGGREGATOR, 7).
-define(BGP_PATH_ATTRIBUTE_COMMUNITY, 8).
-define(BGP_PATH_ATTRIBUTE_ORIGINATOR_ID, 9).
-define(BGP_PATH_ATTRIBUTE_CLUSTER_LIST, 10).
-define(BGP_PATH_ATTRIBUTE_DESTINATION_PREFERENCE, 11).
-define(BGP_PATH_ATTRIBUTE_ADVERTISER, 12).
-define(BGP_PATH_ATTRIBUTE_CLUSTER_ID, 13).
-define(BGP_PATH_ATTRIBUTE_MP_REACH_NLRI, 14).
-define(BGP_PATH_ATTRIBUTE_MP_UNREACH_NLRI, 15).
-define(BGP_PATH_ATTRIBUTE_EXTENDED_COMMUNITIES, 16).
-define(BGP_PATH_ATTRIBUTE_AS4_PATH, 17).
-define(BGP_PATH_ATTRIBUTE_AS4_AGGREGATOR, 18).
-define(BGP_PATH_ATTRIBUTE_SAFI_SPECIFIC, 19).
-define(BGP_PATH_ATTRIBUTE_CONNECTOR, 20).

%% @doc BGP error codes.
%%
-define(BGP_ERROR_CODE_MESSAGE_HEADER_ERROR, 1).
-define(BGP_ERROR_CODE_OPEN_MESSAGE_ERROR, 2).
-define(BGP_ERROR_CODE_UPDATE_MESSAGE_ERROR, 3).
-define(BGP_ERROR_CODE_HOLD_TIMER_EXPIRED, 4).
-define(BGP_ERROR_CODE_FINITE_STATE_MACHINE_ERROR, 5).
-define(BGP_ERROR_CODE_CEASE, 6).

%% @doc BGP error sub codes.
%%
-define(BGP_ERROR_SUB_CODE_UNSPECIFIC, 0).
%% 
%% Sub codes for message header error.
%%
-define(BGP_ERROR_SUB_CODE_CONNECTION_NOT_SYNCHRONIZED, 1).
-define(BGP_ERROR_SUB_CODE_BAD_MESSAGE_LENGTH, 2).
-define(BGP_ERROR_SUB_CODE_BAD_MESSAGE_TYPE, 3).
%%
%% Sub codes for open message error.
%%
-define(BGP_ERROR_SUB_CODE_UNSUPPORTED_VERSION_NUMBER, 1).
-define(BGP_ERROR_SUB_CODE_BAD_PEER_AS, 2).
-define(BGP_ERROR_SUB_CODE_BAD_BGP_IDENTIFIER, 3).
-define(BGP_ERROR_SUB_CODE_UNSUPPORTED_OPTIONAL_PARAMETER, 4).
-define(BGP_ERROR_SUB_CODE_DEPRECATED_AUTHENTICATION_FAILURE, 5).
-define(BGP_ERROR_SUB_CODE_UNACCEPTABLE_HOLD_TIME, 6).
%%
%% Sub codes for update message error.
%%
-define(BGP_ERROR_SUB_CODE_MALFORMED_ATTRIBUTE_LIST, 1).
-define(BGP_ERROR_SUB_CODE_UNRECOGNIZED_WELL_KNOWN_ATTRIBUTE, 2).
-define(BGP_ERROR_SUB_CODE_MISSING_WELL_KNOWN_ATTRIBUTE, 3).
-define(BGP_ERROR_SUB_CODE_ATTRIBUTE_FLAGS_ERROR, 4).
-define(BGP_ERROR_SUB_CODE_ATTRIBUTE_LENGTH_ERROR, 5).
-define(BGP_ERROR_SUB_CODE_INVALID_ORIGIN_ATTRIBUTE, 6).
-define(BGP_ERROR_SUB_CODE_DEPRECATED_AS_ROUTING_LOOP, 7).
-define(BGP_ERROR_SUB_CODE_INVALID_NEXT_HOP_ATTRIBUTE, 8).
-define(BGP_ERROR_SUB_CODE_OPTIONAL_ATTRIBUTE_ERROR, 9).
-define(BGP_ERROR_SUB_CODE_INVALID_NETWORK_FIELD, 10).
-define(BGP_ERROR_SUB_CODE_MALFORMED_AS_PATH, 11).

%% TODO: cease codes.

%% @doc BGP cease notification message sub codes.
%%
-define(BGP_CEASE_SUB_CODE_MAX_NR_PREFIXES_REACHED, 1).
-define(BGP_CEASE_SUB_CODE_ADMIN_SHUTDOWN, 2).
-define(BGP_CEASE_SUB_CODE_PEER_DECONFIGURED, 3).
-define(BGP_CEASE_SUB_CODE_ADMIN_RESET, 4).
-define(BGP_CEASE_SUB_CODE_CONNECTION_REJECTED, 5).
-define(BGP_CEASE_SUB_CODE_OTHER_CONFIG_CHANGE, 6).
-define(BGP_CEASE_SUB_CODE_CONNECTION_COLLISION_RESOLUTION, 7).
-define(BGP_CEASE_SUB_CODE_OUT_OF_RESOURCES, 8).

%% @doc BGP outbound route filtering (ORF) types.
%%
-define(BGP_ORF_TYPE_ADDRESS_PREFIX, 64).

%% @doc BGP marker field.
%%
-define(BGP_MARKER_LENGTH, 16).
-define(BGP_MARKER_BYTE, 16#ff).

%% @doc BGP origin values.
%%
-define(BGP_ORIGIN_IGP, 0).
-define(BGP_ORIGIN_EGP, 1).
-define(BGP_ORIGIN_INCOMPLETE, 2).

%% @doc BGP AS path segment types.
%%
-define(BGP_AS_PATH_SEGMENT_TYPE_AS_SET, 1).
-define(BGP_AS_PATH_SEGMENT_TYPE_AS_SEQUENCE, 2).
-define(BGP_AS_PATH_SEGMENT_TYPE_AS_CONFED_SEQUENCE, 3).
-define(BGP_AS_PATH_SEGMENT_TYPE_AS_CONFED_SET, 4).

%% @doc BGP capability codes.
%%
-define(BGP_CAPABILITY_CODE_RESERVED, 0).
-define(BGP_CAPABILITY_CODE_MULTI_PROTOCOL, 1).
-define(BGP_CAPABILITY_CODE_ROUTE_REFRESH, 2).
-define(BGP_CAPABILITY_CODE_OUTBOUND_ROUTE_FILTERING, 3).
-define(BGP_CAPABILITY_CODE_MULTIPLE_ROUTES_TO_DESTINATION, 4).
-define(BGP_CAPABILITY_CODE_GRACEFUL_RESTART, 64).    
-define(BGP_CAPABILITY_CODE_FOUR_OCTET_AS, 65).
-define(BGP_CAPABILITY_CODE_DYNAMIC_CAPABILITY, 67).
-define(BGP_CAPABILITY_CODE_MULTI_SESSION, 68).
-define(BGP_CAPABILITY_CODE_OLD_ROUTE_REFRESH, 128).
-define(BGP_CAPABILITY_CODE_OLD_OUTBOUND_ROUTE_FILTERING, 130).

%% @doc BGP message length restrictions.
%%
-define(BGP_MESSAGE_MIN_LENGTH, 19).
-define(BGP_MESSAGE_MAX_LENGTH, 4096).
-define(BGP_OPEN_MESSAGE_MIN_LENGTH, 29).
-define(BGP_OPEN_MESSAGE_MAX_LENGTH, ?BGP_MESSAGE_MAX_LENGTH).
-define(BGP_UPDATE_MESSAGE_MIN_LENGTH, 23).
-define(BGP_UPDATE_MESSAGE_MAX_LENGTH, ?BGP_MESSAGE_MAX_LENGTH).
-define(BGP_NOTIFICATION_MESSAGE_MIN_LENGTH, 21).
-define(BGP_NOTIFICATION_MESSAGE_MAX_LENGTH, ?BGP_MESSAGE_MAX_LENGTH).
-define(BGP_KEEP_ALIVE_MESSAGE_MIN_LENGTH, 19).
-define(BGP_KEEP_ALIVE_MESSAGE_MAX_LENGTH, 19).
-define(BGP_ROUTE_REFRESH_MESSAGE_MIN_LENGTH, 9999).     %% TODO: figure out the real value
-define(BGP_ROUTE_REFRESH_MESSAGE_MAX_LENGTH, 9999).     %% TODO: figure out the real value

%% @doc The BGP TCP listen port number
%%
%% TODO: We should use port 179 but that's a pain in the neck because it is a privileged port. For now, during initial
%% testing we use port 1790 instead so that we don't have to run as root.
%% 
-define(BGP_TCP_LISTEN_PORT, 1790).